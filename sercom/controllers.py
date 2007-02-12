# vim: set et sw=4 sts=4 encoding=utf-8 :

from turbogears import controllers, expose, view
from turbogears import widgets as w, validators
from turbogears import identity, redirect
from cherrypy import request, response
from model import *
# from sercom import json

from subcontrollers import *

import logging
log = logging.getLogger("sercom.controllers")

class Root(controllers.RootController):

    @expose(template='.templates.welcome')
    @identity.require(identity.has_permission('entregar'))
    def index(self):
        import time
        log.debug('Happy TurboGears Controller Responding For Duty')
        return dict(now=time.ctime())

    @expose(template='.templates.login')
    def login(self, forward_url=None, previous_url=None, tg_errors=None, *args,
            **kw):

        if tg_errors:
            flash(_(u'Hubo un error en el formulario!'))

        if not identity.current.anonymous \
                and identity.was_login_attempted() \
                and not identity.get_identity_errors():
            raise redirect(forward_url)

        forward_url = None
        previous_url = request.path

        if identity.was_login_attempted():
            msg = _(u'Las credenciales proporcionadas no son correctas o no '
                    'le dan acceso al recurso solicitado.')
        elif identity.get_identity_errors():
            msg = _(u'Debe proveer sus credenciales antes de acceder a este '
                    'recurso.')
        else:
            msg = _(u'Por favor ingrese.')
            forward_url = request.headers.get('Referer', '/')

        fields = [
            w.TextField(name='login_user', label=_(u'Usuario'),
                validator=validators.NotEmpty()),
            w.PasswordField(name='login_password', label=_(u'Contraseña'),
                validator=validators.NotEmpty())
        ]
        if forward_url:
            fields.append(w.HiddenField(name='forward_url'))
        fields.extend([w.HiddenField(name=name) for name in request.params
                if name not in ('login_user', 'login_password', 'login_submit',
                                'forward_url')])

        submit = w.SubmitButton(name='login_submit')

        login_form = w.TableForm(fields=fields, action=previous_url,
                        submit_text=_(u'Ingresar'), submit=submit)

        values = dict(forward_url=forward_url)
        values.update(request.params)

        response.status=403
        return dict(login_form=login_form, form_data=values, message=msg,
                logging_in=True)

    @expose()
    def logout(self):
        identity.current.logout()
        raise redirect('/')

    docente = DocenteController()

    enunciado = EnunciadoController()

    caso_de_prueba = CasoDePruebaController()

#{{{ Agrega summarize a namespace tg de KID
def summarize(text, size, concat=True, continuation='...'):
    """Summarize a string if it's length is greater than a specified size. This
    is useful for table listings where you don't want the table to grow because
    of a large field.

    >>> from sercome.controllers
    >>> text = '''Why is it that nobody remembers the name of Johann
    ... Gambolputty de von Ausfern-schplenden-schlitter-crasscrenbon-fried-
    ... digger-dingle-dangle-dongle-dungle-burstein-von-knacker-thrasher-apple-
    ... banger-horowitz-ticolensic-grander-knotty-spelltinkle-grandlich-
    ... grumblemeyer-spelterwasser-kurstlich-himbleeisen-bahnwagen-gutenabend-
    ... bitte-ein-nurnburger-bratwustle-gernspurten-mitz-weimache-luber-
    ... hundsfut-gumberaber-shonedanker-kalbsfleisch-mittler-aucher von
    ... Hautkopft of Ulm?'''
    >>> summarize(text, 30)
    'Why is it that nobody remem...'
    >>> summarize(text, 68, False, ' [...]')
    'Why is it that nobody remembers the name of Johann\nGambolputty [...]'
    >>> summarize(text, 68, continuation=' >>')
    'Why is it that nobody remembers the name of Johann Gambolputty de >>'
    """
    if text is not None:
        if concat:
            text = text.replace('\n', ' ')
        if len(text) > size:
            text = text[:size-len(continuation)] + continuation
    return text

def add_custom_stdvars(vars):
    return vars.update(dict(summarize=summarize))

view.variable_providers.append(add_custom_stdvars)
#}}}


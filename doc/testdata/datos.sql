BEGIN TRANSACTION;

INSERT INTO "alumno" VALUES(1, NULL);
INSERT INTO "alumno" VALUES(2, NULL);
INSERT INTO "alumno" VALUES(3, NULL);
INSERT INTO "alumno" VALUES(4, NULL);
INSERT INTO "alumno" VALUES(5, NULL);
INSERT INTO "alumno" VALUES(6, NULL);
INSERT INTO "alumno" VALUES(7, NULL);
INSERT INTO "alumno" VALUES(8, NULL);
INSERT INTO "alumno" VALUES(9, NULL);
INSERT INTO "alumno" VALUES(10, NULL);
INSERT INTO "alumno" VALUES(11, NULL);
INSERT INTO "alumno" VALUES(12, NULL);
INSERT INTO "alumno" VALUES(13, NULL);
INSERT INTO "alumno" VALUES(14, NULL);
INSERT INTO "alumno" VALUES(15, NULL);
INSERT INTO "alumno" VALUES(16, NULL);
INSERT INTO "alumno" VALUES(17, NULL);
INSERT INTO "alumno" VALUES(18, NULL);
INSERT INTO "alumno" VALUES(19, NULL);

INSERT INTO "alumno_inscripto" VALUES(1, 8, 1, 0, NULL, NULL, NULL, NULL);
INSERT INTO "alumno_inscripto" VALUES(2, 8, 2, 0, NULL, NULL, NULL, NULL);
INSERT INTO "alumno_inscripto" VALUES(3, 8, 3, 0, NULL, NULL, NULL, NULL);
INSERT INTO "alumno_inscripto" VALUES(4, 8, 4, 0, NULL, NULL, NULL, NULL);
INSERT INTO "alumno_inscripto" VALUES(5, 8, 5, 0, NULL, NULL, NULL, NULL);
INSERT INTO "alumno_inscripto" VALUES(6, 8, 6, 0, NULL, NULL, NULL, NULL);
INSERT INTO "alumno_inscripto" VALUES(7, 8, 7, 0, NULL, NULL, NULL, NULL);
INSERT INTO "alumno_inscripto" VALUES(8, 8, 8, 0, NULL, NULL, NULL, NULL);
INSERT INTO "alumno_inscripto" VALUES(9, 8, 9, 0, NULL, NULL, NULL, NULL);
INSERT INTO "alumno_inscripto" VALUES(10, 8, 10, 0, NULL, NULL, NULL, NULL);
INSERT INTO "alumno_inscripto" VALUES(11, 8, 11, 0, NULL, NULL, NULL, NULL);
INSERT INTO "alumno_inscripto" VALUES(12, 8, 12, 0, NULL, NULL, NULL, NULL);
INSERT INTO "alumno_inscripto" VALUES(13, 8, 13, 0, NULL, NULL, NULL, NULL);
INSERT INTO "alumno_inscripto" VALUES(14, 8, 14, 0, NULL, NULL, NULL, NULL);
INSERT INTO "alumno_inscripto" VALUES(15, 8, 15, 0, NULL, NULL, NULL, NULL);
INSERT INTO "alumno_inscripto" VALUES(16, 8, 16, 0, NULL, NULL, NULL, NULL);
INSERT INTO "alumno_inscripto" VALUES(17, 8, 17, 0, NULL, NULL, NULL, NULL);
INSERT INTO "alumno_inscripto" VALUES(18, 8, 18, 0, NULL, NULL, NULL, NULL);
INSERT INTO "alumno_inscripto" VALUES(19, 8, 19, 0, NULL, NULL, NULL, NULL);

INSERT INTO "caso_de_prueba" VALUES(4, 1, 'Demasiados parámetros');
INSERT INTO "caso_de_prueba" VALUES(5, 1, 'Falta un parámetro');
INSERT INTO "caso_de_prueba" VALUES(6, 1, 'No existe archivo');
INSERT INTO "caso_de_prueba" VALUES(7, 1, 'Prueba de Registros / Matematica');
INSERT INTO "caso_de_prueba" VALUES(8, 1, 'Prueba de Memoria');
INSERT INTO "caso_de_prueba" VALUES(9, 1, 'Prueba de Comparaciones / Varios');
INSERT INTO "caso_de_prueba" VALUES(10, 1, 'Prueba de Saltos');
INSERT INTO "caso_de_prueba" VALUES(11, 1, 'Chequeo de memoria');
INSERT INTO "caso_de_prueba" VALUES(12, 1, 'Bubble Sort');
INSERT INTO "caso_de_prueba" VALUES(13, 1, 'Sin parámetros');

INSERT INTO "comando" VALUES(1, 'make -f Makefile', 'Compila C++ usando un Makefile genérico que compila todo en un ejecutable llamado tp', 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, 1, NULL, NULL, '(V__stdouterr__
tp1
.', 1, 'ComandoFuente');
INSERT INTO "comando" VALUES(2, '', 'Corre el caso de prueba sin filtros', -257, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 1, NULL, NULL, '(t.', 1, 'ComandoPrueba');
INSERT INTO "comando" VALUES(3, 'valgrind --trace-children=yes --track-fds=yes --num-callers=20 --leak-check=full --show-reachable=yes --leak-resolution=high', 'Chequea memoria con valgrind', -257, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 1, NULL, NULL, '(V__stdouterr__
tp1
.', 1, 'ComandoPrueba');
INSERT INTO "comando" VALUES(4, './tp 8 2 100 -3 prueba1.asm de mas', 'Debe fallar porque tiene parámetros de más', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, NULL, 'ID�������J[h/��������������XXlm]hnmXXNM���\�>�\�>Nq������ID��������J[h/�����������������������z����XXlm]hnmXXNM����\�>Nq��ID����������>���6�����', '(t.', 1, 'CasoDePrueba');
INSERT INTO "comando" VALUES(5, './tp 8 2 100 -3', 'Falta parámetro de archivo', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, NULL, 'ID�������J[h/��������������XXlm]hnmXXNM���\�>�\�>Nq������ID��������J[h/�����������������������z����XXlm]hnmXXNM����\�>Nq��ID����������>���6�����', '(t.', 1, 'CasoDePrueba');
INSERT INTO "comando" VALUES(6, './tp 8 2 100 -3 no_existo.asm', 'Se pide procesar un archivo que no existe', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, NULL, 'ID�������J[h/��������������XXlm]hnmXXNM���\�>�\�>Nq������ID��������J[h/�����������������������z����XXlm]hnmXXNM����\�>Nq��ID����������>���6�����', '(t.', 1, 'CasoDePrueba');
INSERT INTO "comando" VALUES(7, './tp 16 9 50 -50 prueba1.asm', 'Prueba de Registros / Matematica / Instrucciones MOV, ADD, SUB, OUT', 0, NULL, NULL, NULL, NULL, NULL, NULL, 0, 1, 1, '�[V{�zA=���k {}�pml<9l~x`_�P�P`����_Xv�;��b�Ì��~U8n��0f�$FØb����ԁ��F2�$-�2�T3�!���Id�˾�^��K,r����U�{4xcT&���G���V�uS�za����ˁ
�G�ͩ4l��0^�q+�,��&�Zi;��1Z>�������0r���<��Cd�8��l7{Q��G֥B)�k 8�ӳCT��iEY�+V����"�7��΂�?P�Ud|BMM���
ۧ�	���x��gM]��g�<�9%j�K�[$f�>XZ���g@Fu�k��̲M�%(��Z�@��l���w5�x�BR�Hfv��O���\�h�%�I��m�Ʈ�۾�
�n��|GOx���.�{3T�쳯Y���NA]�*�	Pp۶��{z[�ؒ�m즗T��8;fs�㽝��>�[V"{�zA=���k��{}�pml<9l~x`_�P`�[VQ�', 'ID�������C[h/�E{U	���	�����XXlm]hnmXXNM���\�>�\�>Nq������*)+),)-)&-)ID��������C[h/�E{U	���	��������������z����XXlm]hnmXXNM����\�>Nq��ID����������>���F�����', '(t.', 1, 'CasoDePrueba');
INSERT INTO "comando" VALUES(8, './tp 8 2 100 -3 prueba2.asm', 'Prueba de Memoria / Instrucciones LOAD, STORE, MOV, ADD, OUT', 0, NULL, NULL, NULL, NULL, NULL, NULL, 0, 1, 1, 'C��ѽ��Ž79,�8xqm���fý�Ƚҽ-/2"��0*ƽ��O��O�5�������(@��;|N�ʑ6�j��]`��0�k��~s��,��)�;�����T9��A���[���+�?V�:O�ٳ����-�����+e��u��5l��>!��}FC��׾��z�^I/ZTo�g۾�����~ʝ�"B	�$�ު;[a����wa������te�HWw�p�i�DgH~zia�L����~�������FЭ��q��)|�&͇3w�D�����8�.�>�����+=l����Q̜ߵ������K�cv>��-�r�{m�D٢`��jk�+��-v��#^���UP����-��uA�]��*�~����.�V��M�E�;� u�E��k"ǘ�S��z��=�A�����	ꫭ���B���߇��p���=�)Ǟ��)�**��d�z��5�A�uA�!j@Ԑ��,d|zi1��/A����ѽ��Ž79,�8xqm���fý�Ƚʽ��������]>����-/2"��0*½��O�5���ý����������������', 'ID�������D[h/�?y���������XXlm]hnmXXNM���\�>�\�>Nq������&,0)*))+,ID��������D[h/�?y������������������z����XXlm]hnmXXNM����\�>Nq��ID����������>���D�����', '(t.', 1, 'CasoDePrueba');
INSERT INTO "comando" VALUES(9, './tp 16 5 9999 -9999 prueba3.asm', 'Prueba de Comparaciones / Varios / Instrucciones CMP, NOP, CNT, otros', 0, NULL, NULL, NULL, NULL, NULL, NULL, 0, 1, 1, '3.��������_RE\&�����N�������SUXHEDDVP87���Qu�(Qu�(8[������7.n���:�T��T�g��<6�X����^3O��5�h��q�ʸ	 ��;�K�I�\+G/��2��^�+3O����6��h��=[����OB�iLrC9�� )CN�]�ۍŌ~9Q�B�^��*d�·-M�Z�3ñ�rA=���~�j���|/!C��?�>�
HQ�������E�5��]L�7,��m����}D��~1��Op8�⋛�:�K��Qp���$a��D�v���(�,��d$������K�1e�N��E���]�%���[�p�����t�r��lQ���`�	Ո�b����$�����X�g���G�n��9<�A`�ĔKg*B+�7���!����u��/��w�nE)r���.}4-�[PN��_R���:�dro��L�$Sj��9Oo�<U���C� i鯩�W)f=�E�<3��j+5�Hbe�T��E�dՖ��҃��W�,���^�VK�|q��j�?hB3.����������_RE\&�����N���������������d����SUXHEDDVP87���Qu�(8[��3.����������)��������', '@;�������<R_&�b�=����������OOcdT_edOOED���S�5�S�5Eh������#�"�"�"��%t�@;��������<R_&�b�=�������������������q����OOcdT_edOOED���S�5Eh��@;����������5���<�����', '(t.', 1, 'CasoDePrueba');
INSERT INTO "comando" VALUES(10, './tp 32000 100 100 -100 prueba4.asm', 'Prueba de Saltos / Instrucciones JMP, JZ, JNZ, JP, JN, JMP, NOP, otros', 0, NULL, NULL, NULL, NULL, NULL, NULL, 0, 1, 1, '���kl|hhhphd�מ�/��jhhzthhsh}h�����ɜ���ս�qhkc�a�c�a���lhPkPk=�C�C�x�?��G�)�/����{�k!HU^	wB��l��^S���1�<,������9�������;/1c�x,�Z���X���H��2�G�B��Qԁ(\�6!�TΆ�>aj�N�����9���!D2g-�~�8�FAM�Ft�ƤB}:�=72]�$r��U]�3�9�����mm45���H2������^�HM?+M�"��裶����V��2�B1�4(<�e�MUg	�C���Ⱥ$�m��툉���A-��sydc\�AJs�����ԙ�iVּd~v.x\f=)���u*NӲy�*Y��1JY��6���X��`(�@�x%�>>��^i�{�G�i��Pr��%5�^.sP{ڧ��2�����O)�J�uҩ�(Cx��ؗ�h�x�����i��Lk���i�W~ze���H�1��`��mw)0j��9�$�J�]*�p[�
��"���1,ų�v�}K�-5����@�įYF�
�@�����@Bz��E��D� �;-���ϋ��.{z��c������E�_}O�N��Z�$x��5󻪎[Y�O�p[LM��W�"�X^�?��!���7=.{l[f}f9�h��ijk|hhhphd�מ�/��jhhzthhshuhhhhhihhh�hhhh�����ɜ���ս�mhkc�a���hh��mnhhhhihih�hhhjhhhh', 'ID�������F[h/e����������XXlm]hnmXXNM���\�>�\�>Nq������)*+,-.ID��������F[h/e�������������������z����XXlm]hnmXXNM����\�>Nq��ID����������>���B�����', '(t.', 1, 'CasoDePrueba');
INSERT INTO "comando" VALUES(11, './tp 8192 12 20000 -1 prueba5.asm', '', 0, NULL, NULL, NULL, NULL, NULL, NULL, 0, 1, 1, '�VQ	
4�u<�/�N�Fvx{khg;4gys[Z	>��K>��K[~
�	�	�\aU�6���>i5�.c�:_�z��*�d��$Fn� 2�~Q�:��}�Oo�1z�ؔڬDD�qI����������m��mBm«v���Q�?�B��fnP��!{=�_��ba����G�C�����ca&%�
�(B1���<�L�N��G�0�]�V�V�%���2J/m��9�^|+�hU�d(Z�����~Y���^.�A���٪j��d�	��4w�I	5r���&ӏ�qVb��
��@���I�k|��{��%V�ŶL�~���L���Q�"���Ğ�������y����^TQ>B�#��$`͹>oa����B9����Iu����4�Ab����idf�B}����5�Ǩ��1|hI�0ۜò+�+|�� ˏ�J#���7Vtɟ�(���b�x�%G�;4��Y_�H�P��� �+-��9�Jj�9q��Z3�R��2���;�a��(eT�WUK6��~ZǛ��P��-��Mc�`O����[9V��"�u��=0d�е����|r0*-�yK�ݸ�墉�����?�|[H#YqiYx��y�+MU]�"�H�d�B]R{���7K�Zj�89<�}(z��TqclѶ`���k�h���+(l��Bk����pl��M{O����G�]��~S���_�/|���?+4@��E��[����2l*������1:��-�q���f����W�s��W��G9�f�b��Ks�e:D�������
���3�VQ	4�u<�/�N�F��vx{khg;4gys[Z	>��K[~VQL:	', 'ID�������H[h/hx�(��������XXlm]hnmXXNM���\�>�\�>Nq������)*/,1-./ID��������H[h/hx�(�����������������z����XXlm]hnmXXNM����\�>Nq��ID����������>���A�����', '(t.', 1, 'CasoDePrueba');
INSERT INTO "comando" VALUES(12, './tp 32000 12 20000 -20000 prueba6.asm', '', 0, NULL, NULL, NULL, NULL, NULL, NULL, 0, 1, 1, '���WXhTTT\T��Ê<B�nYTTkTT_TiT��ɹ���������]TW��M���M���XT<W<W)���7�h�Kl��?�����]t������=�e��E�[y�IY�LC�����a(�g�q��Ð�:06��e��"����F��F��v��8{�J��r�YM�9y<��2�[�n;E��ͪ����#G\�XCr==/��hz1Lد��xR������9��h%ғV_=����:�׀ģ�v4����u�mvy��8��3����tD��`�q�шNL�h��z���7S�E߾���"�{�����f^k^�c�TkLwm	[�܎r��z���h�}������e�edh�vlvlvlvlvlvlvlv�v����s�4�4�4�4�4�4�De5w����\se�vИL�Dee�>GRO��RH�h֐|{v��6��$yV��)�����Vr�ܶv��~YMD]4K���3uf�;̮]�\�+�x��[݋��[D��RL%)ܲ�@V%��eH���[q�i�o�2�k��ŵ��D��t�a�����_X�^�
�����+��e[�.�A��7P�šv3Y�I�9�*؁�_�0�Sa�@�6��6����7�M�i�}�Ł�.P��WT¢��*��*n��⣣%F�~ǰ+�n�;��2��w�٩-����	�./�;�]��JP휸�B�F�I|�A;#���+V�&�����/�?G�P��p��dZ�F<� �$���a��pI��B���izxd�(s���4�Ĝx0���!C�c:3�3]��l"&��ȫ���2c��Z�n~�d���޾�E��{��1����w��PDي�N���,J���,����4��ȴ��μ!���;�!;�m�K�8�_�Ư��7mZ�!h#X>2���&��r�(������u*\+�.��Dt/�M"���,�\L���X:M��l��d�ع�DD�ʄ�[����c�����Dr���i�3ڿ#�a@vտhe.���H$�o��1��w82�K8�8��
.?�5Ͼ+ۂ7��c8�Z���YS�3ڣ���Q0��ݸN�������gf��?:@���ZG��,����߰���?t�q��r��N�����җ,	��*=F>Υ,)�W�/`�����&��£�Պ��!d�KA�^4�%J�yކ�(�������h`ԑlP���H�̆eY��o
�=�2?�(���@C��x[[��Ы������kЂ?�M_�۶E���y0��	���oaj?*��/�E�:q��1����	����Š��7�W}W;>:���0�W(ڿv��A	�
̗,��D�Q\/�*�W}A�bxu���N��3���O����5��U��UVkWhTTT\T��Ê<B�nYTTkTT_TaTTTTTUTTT��TTTT��ɹ���������YTW��M���TT��YZTTTTUTUT�TTT�YTTTT', '83��������8JWy�s6���z�������GG[\LW]\GG=<���K�-�K�-=`�����������(�����Ă_��to�l������BP�kb`��YX٪d�+,f�Ly5��̹����\�5��ܙ�Wn�83����������8JWy�s6���z���������������i����GG[\LW]\GG=<���K�-=`��83����������-���s�����', '(t.', 1, 'CasoDePrueba');
INSERT INTO "comando" VALUES(13, './tp', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, NULL, 'ID�������J[h/��������������XXlm]hnmXXNM���\�>�\�>Nq������ID��������J[h/�����������������������z����XXlm]hnmXXNM����\�>Nq��ID����������>���6�����', '(t.', 1, 'CasoDePrueba');

INSERT INTO "comando_fuente" VALUES(1, 1, 1);

INSERT INTO "comando_prueba" VALUES(2, 2, 1);
INSERT INTO "comando_prueba" VALUES(3, 2, 2);

INSERT INTO "curso" VALUES(1, 2005, 1, 1, 'Martes');
INSERT INTO "curso" VALUES(2, 2005, 1, 2, 'Jueves');
INSERT INTO "curso" VALUES(3, 2005, 2, 1, 'Jueves');
INSERT INTO "curso" VALUES(4, 2006, 1, 2, 'Martes');
INSERT INTO "curso" VALUES(5, 2006, 1, 3, 'Jueves');
INSERT INTO "curso" VALUES(6, 2006, 2, 2, 'Martes');
INSERT INTO "curso" VALUES(7, 2006, 2, 3, 'Miercoles');
INSERT INTO "curso" VALUES(8, 2007, 1, 1, 'Martes');

INSERT INTO "docente" VALUES(20, 1);
INSERT INTO "docente" VALUES(21, 1);
INSERT INTO "docente" VALUES(22, 1);
INSERT INTO "docente" VALUES(23, 1);
INSERT INTO "docente" VALUES(24, 0);
INSERT INTO "docente" VALUES(25, 0);
INSERT INTO "docente" VALUES(26, 0);
INSERT INTO "docente" VALUES(27, 0);
INSERT INTO "docente" VALUES(28, 0);
INSERT INTO "docente" VALUES(29, 0);
INSERT INTO "docente" VALUES(30, 1);
INSERT INTO "docente" VALUES(32, 0);
INSERT INTO "docente" VALUES(33, 0);
INSERT INTO "docente" VALUES(34, 0);
INSERT INTO "docente" VALUES(35, 1);
INSERT INTO "docente" VALUES(36, 0);

INSERT INTO "docente_inscripto" VALUES(1, 8, 20, 1, NULL);
INSERT INTO "docente_inscripto" VALUES(2, 8, 21, 1, NULL);
INSERT INTO "docente_inscripto" VALUES(3, 8, 22, 1, NULL);
INSERT INTO "docente_inscripto" VALUES(4, 1, 30, 0, '');
INSERT INTO "docente_inscripto" VALUES(5, 8, 32, 1, NULL);
INSERT INTO "docente_inscripto" VALUES(6, 8, 35, 1, NULL);
INSERT INTO "docente_inscripto" VALUES(7, 8, 36, 1, NULL);

INSERT INTO "entregador" VALUES(1, NULL, NULL, '', 1, 'AlumnoInscripto');
INSERT INTO "entregador" VALUES(2, NULL, NULL, '', 1, 'AlumnoInscripto');
INSERT INTO "entregador" VALUES(3, NULL, NULL, '', 1, 'AlumnoInscripto');
INSERT INTO "entregador" VALUES(4, NULL, NULL, '', 1, 'AlumnoInscripto');
INSERT INTO "entregador" VALUES(5, NULL, NULL, '', 1, 'AlumnoInscripto');
INSERT INTO "entregador" VALUES(6, NULL, NULL, '', 1, 'AlumnoInscripto');
INSERT INTO "entregador" VALUES(7, NULL, NULL, '', 1, 'AlumnoInscripto');
INSERT INTO "entregador" VALUES(8, NULL, NULL, '', 1, 'AlumnoInscripto');
INSERT INTO "entregador" VALUES(9, NULL, NULL, '', 1, 'AlumnoInscripto');
INSERT INTO "entregador" VALUES(10, NULL, NULL, '', 1, 'AlumnoInscripto');
INSERT INTO "entregador" VALUES(11, NULL, NULL, '', 1, 'AlumnoInscripto');
INSERT INTO "entregador" VALUES(12, NULL, NULL, '', 1, 'AlumnoInscripto');
INSERT INTO "entregador" VALUES(13, NULL, NULL, '', 1, 'AlumnoInscripto');
INSERT INTO "entregador" VALUES(14, NULL, NULL, '', 1, 'AlumnoInscripto');
INSERT INTO "entregador" VALUES(15, NULL, NULL, '', 1, 'AlumnoInscripto');
INSERT INTO "entregador" VALUES(16, NULL, NULL, '', 1, 'AlumnoInscripto');
INSERT INTO "entregador" VALUES(17, NULL, NULL, '', 1, 'AlumnoInscripto');
INSERT INTO "entregador" VALUES(18, NULL, NULL, '', 1, 'AlumnoInscripto');
INSERT INTO "entregador" VALUES(19, NULL, NULL, '', 1, 'AlumnoInscripto');
INSERT INTO "entregador" VALUES(20, NULL, NULL, '', 1, 'Grupo');
INSERT INTO "entregador" VALUES(21, NULL, NULL, '', 1, 'Grupo');
INSERT INTO "entregador" VALUES(22, NULL, NULL, '', 1, 'Grupo');
INSERT INTO "entregador" VALUES(23, NULL, NULL, '', 1, 'Grupo');
INSERT INTO "entregador" VALUES(24, NULL, NULL, '', 1, 'Grupo');

INSERT INTO "enunciado" VALUES(1, 'Simulador de un microcontrolador', 2007, 1, '', 23, '2007-03-14 16:17:11', NULL);

INSERT INTO "enunciado_tarea" VALUES(1, 1);
INSERT INTO "enunciado_tarea" VALUES(1, 2);

INSERT INTO "grupo" VALUES(20, 8, '1', NULL);
INSERT INTO "grupo" VALUES(21, 8, '2', 4);
INSERT INTO "grupo" VALUES(22, 8, '3', 8);
INSERT INTO "grupo" VALUES(23, 8, '4', 11);
INSERT INTO "grupo" VALUES(24, 8, '5', 14);

INSERT INTO "miembro" VALUES(13, 24, 14, NULL, '2007-03-14 16:06:06', NULL);
INSERT INTO "miembro" VALUES(14, 24, 15, NULL, '2007-03-14 16:06:06', NULL);
INSERT INTO "miembro" VALUES(15, 24, 16, NULL, '2007-03-14 16:06:06', NULL);
INSERT INTO "miembro" VALUES(16, 24, 17, NULL, '2007-03-14 16:06:06', NULL);
INSERT INTO "miembro" VALUES(17, 20, 1, NULL, '2007-03-15 12:19:35', NULL);
INSERT INTO "miembro" VALUES(18, 20, 2, NULL, '2007-03-15 12:19:35', NULL);
INSERT INTO "miembro" VALUES(19, 20, 3, NULL, '2007-03-15 12:19:35', NULL);
INSERT INTO "miembro" VALUES(20, 22, 8, NULL, '2007-03-15 12:20:02', NULL);
INSERT INTO "miembro" VALUES(21, 22, 9, NULL, '2007-03-15 12:20:02', NULL);
INSERT INTO "miembro" VALUES(22, 22, 10, NULL, '2007-03-15 12:20:02', NULL);
INSERT INTO "miembro" VALUES(23, 21, 4, NULL, '2007-03-15 12:20:40', NULL);
INSERT INTO "miembro" VALUES(24, 21, 5, NULL, '2007-03-15 12:20:40', NULL);
INSERT INTO "miembro" VALUES(25, 21, 6, NULL, '2007-03-15 12:20:40', NULL);
INSERT INTO "miembro" VALUES(26, 23, 11, NULL, '2007-03-15 12:20:53', NULL);
INSERT INTO "miembro" VALUES(27, 23, 12, NULL, '2007-03-15 12:20:53', NULL);
INSERT INTO "miembro" VALUES(28, 23, 13, NULL, '2007-03-15 12:20:53', NULL);

INSERT INTO "rol" VALUES(1, 'admin', NULL, '2007-03-14 15:18:27', '(ccopy_reg
_reconstructor
p1
(csercom.model
Permiso
p2
c__builtin__
object
p3
NtRp4
(dp5
S''descripcion''
p6
VPermite entregar trabajos pr�cticos
p7
sS''nombre''
p8
Ventregar
p9
sS''valor''
p10
I1
sbg1
(g2
g3
NtRp11
(dp12
g6
VPermite hacer ABMs arbitrarios
p13
sg8
Vadmin
p14
sg10
I2
sbtp15
.');
INSERT INTO "rol" VALUES(2, 'alumno', NULL, '2007-03-14 15:18:27', '(ccopy_reg
_reconstructor
p1
(csercom.model
Permiso
p2
c__builtin__
object
p3
NtRp4
(dp5
S''descripcion''
p6
VPermite entregar trabajos pr�cticos
p7
sS''nombre''
p8
Ventregar
p9
sS''valor''
p10
I1
sbtp11
.');

INSERT INTO "rol_usuario" VALUES(1, 22);

INSERT INTO "tarea" VALUES(1, 'Compilar C++', 'Compila C++ usando un Makefile genérico que compila todo en un ejecutable llamado tp', 'TareaFuente');
INSERT INTO "tarea" VALUES(2, 'Ejecutar + valgrind', 'Ejecuta primero de forma normal y luego con valgrind. Si no pasa la prueba, rechaza, si no pasa el valgrind, no.', 'TareaPrueba');

INSERT INTO "tarea_fuente" VALUES(1);

INSERT INTO "tarea_prueba" VALUES(2);

INSERT INTO "usuario" VALUES(1, '76335','a05bd890c4868ea1807f8564055d1fba77c6ba81', 'JORGE EDUARDO PITARO', 'jep77ar@gmail.com', '', '2007-03-13 00:54:15', NULL, 1, 'Alumno');
INSERT INTO "usuario" VALUES(2, '78548','a05bd890c4868ea1807f8564055d1fba77c6ba81', 'MARTIN FERRARI', 'martinferra@yahoo.com.ar', '4322-9652', '2007-03-13 00:54:15', NULL, 1, 'Alumno');
INSERT INTO "usuario" VALUES(3, '78760','a05bd890c4868ea1807f8564055d1fba77c6ba81', 'FERNANDO CLAUDIO MARTIKIAN', 'fernando_martikian@crgl-thirdparty.com', '48211291', '2007-03-13 00:54:15', '', 1, 'Alumno');
INSERT INTO "usuario" VALUES(4, '79389','a05bd890c4868ea1807f8564055d1fba77c6ba81', 'SEBASTIAN VERRONE', 'sebafi10@yahoo.com.ar', '4941-2939', '2007-03-13 00:54:15', NULL, 1, 'Alumno');
INSERT INTO "usuario" VALUES(5, '80843','a05bd890c4868ea1807f8564055d1fba77c6ba81', 'MARTIN OSVALDO GORGAZZI', 'martingorgazzi@fibertel.com.ar', '44331593', '2007-03-13 00:54:15', NULL, 1, 'Alumno');
INSERT INTO "usuario" VALUES(6, '81533','a05bd890c4868ea1807f8564055d1fba77c6ba81', 'GUSTAVO JAVIER NARCISI', 'tavojavi@speedy.com.ar', '4298-1265', '2007-03-13 00:54:15', NULL, 1, 'Alumno');
INSERT INTO "usuario" VALUES(7, '81713','a05bd890c4868ea1807f8564055d1fba77c6ba81', 'OSCAR ALEJANDRO VICTORIANO', 'voavictoriano@hotmail.com', '42984069', '2007-03-13 00:54:15', NULL, 1, 'Alumno');
INSERT INTO "usuario" VALUES(8, '81875','a05bd890c4868ea1807f8564055d1fba77c6ba81', 'JHONNY ROGER FUENTES MANCILLA', 'jnysaa@yahoo.com.ar', '4572-7933', '2007-03-13 00:54:15', NULL, 1, 'Alumno');
INSERT INTO "usuario" VALUES(9, '82598','a05bd890c4868ea1807f8564055d1fba77c6ba81', 'MAXIMILIANO CROCE', 'crocemaxi@hotmail.com', '1556361402', '2007-03-13 00:54:15', NULL, 1, 'Alumno');
INSERT INTO "usuario" VALUES(10, '82634','a05bd890c4868ea1807f8564055d1fba77c6ba81', 'FERNANDO CESAR NARDINI', 'nfrasec@gmail.com', '', '2007-03-13 00:54:15', NULL, 1, 'Alumno');
INSERT INTO "usuario" VALUES(11, '82899','a05bd890c4868ea1807f8564055d1fba77c6ba81', 'PAULA SOLEDAD FERREYRA', 'paula_s_f@yahoo.com.ar', '', '2007-03-13 00:54:15', NULL, 1, 'Alumno');
INSERT INTO "usuario" VALUES(12, '82903','a05bd890c4868ea1807f8564055d1fba77c6ba81', 'LEONARDO GORBLIUK', 'lgorbliuk@gmail.com', '', '2007-03-13 00:54:15', NULL, 1, 'Alumno');
INSERT INTO "usuario" VALUES(13, '83481','a05bd890c4868ea1807f8564055d1fba77c6ba81', 'EZEQUIEL FERNANDO SINGER', 'ezesinger@fibertel.com.ar', '48033260', '2007-03-13 00:54:15', NULL, 1, 'Alumno');
INSERT INTO "usuario" VALUES(14, '83488','a05bd890c4868ea1807f8564055d1fba77c6ba81', 'MARIANO EZEQUIEL KFURI', 'marianokfuri@yahoo.com.ar', '4632-7735', '2007-03-13 00:54:15', NULL, 1, 'Alumno');
INSERT INTO "usuario" VALUES(15, '83604','a05bd890c4868ea1807f8564055d1fba77c6ba81', 'PABLO EZEQUIEL BRAGAN', 'pbragan@gmail.com', '4572-9073', '2007-03-13 00:54:15', NULL, 1, 'Alumno');
INSERT INTO "usuario" VALUES(16, '83605','a05bd890c4868ea1807f8564055d1fba77c6ba81', 'RODRIGO SEBASTIAN MARCOS', 'rodrigomarcos4@yahoo.com.ar', '4566-6971', '2007-03-13 00:54:15', NULL, 1, 'Alumno');
INSERT INTO "usuario" VALUES(17, '83607','a05bd890c4868ea1807f8564055d1fba77c6ba81', 'LUCIANO HAMMOE', 'lhammoe@fibertel.com.ar', '4501-2834', '2007-03-13 00:54:15', NULL, 1, 'Alumno');
INSERT INTO "usuario" VALUES(18, '83775','a05bd890c4868ea1807f8564055d1fba77c6ba81', 'ALEJANDRO PABLO CAVALLERO', 'ale_algo@yahoo.com.ar', ' alepc253@yahoo.com', '2007-03-13 00:54:15', NULL, 1, 'Alumno');
INSERT INTO "usuario" VALUES(19, '80256','a05bd890c4868ea1807f8564055d1fba77c6ba81', 'VERONICA ANABELLA CENTANNI', 'vecentanni@yahoo.com.ar', '46537983', '2007-03-13 00:54:15', NULL, 1, 'Alumno');
INSERT INTO "usuario" VALUES(20, 'gonza', 'a05bd890c4868ea1807f8564055d1fba77c6ba81', 'Gonzalo Merayo', 'merayo@gmail.com', '', '2007-03-13 00:54:15', '', 1, 'Docente');
INSERT INTO "usuario" VALUES(21, 'nico', 'a05bd890c4868ea1807f8564055d1fba77c6ba81', 'Nicolas Marquessi O''Neill', 'nmarquessi@fibertel.com.ar', '', '2007-03-13 00:54:15', '', 1, 'Docente');
INSERT INTO "usuario" VALUES(22, 'luca', 'a05bd890c4868ea1807f8564055d1fba77c6ba81', 'Leandro Lucarella', 'llucax+7542@gmail.com', '4554-1554', '2007-03-13 00:54:15', '', 1, 'Docente');
INSERT INTO "usuario" VALUES(23, 'chris', 'a05bd890c4868ea1807f8564055d1fba77c6ba81', 'Christian Calonico', 'ccaloni@fi.uba.ar', '', '2007-03-13 00:54:15', '', 1, 'Docente');
INSERT INTO "usuario" VALUES(24, 'beto', 'a05bd890c4868ea1807f8564055d1fba77c6ba81', 'Alberto Ortega', 'aortega@fi.uba.ar', '', '2007-03-13 00:54:15', '', 0, 'Docente');
INSERT INTO "usuario" VALUES(25, 'eze', 'a05bd890c4868ea1807f8564055d1fba77c6ba81', 'Ezequiel M. Gonzalez Busquin', 'ezequielinfo@yahoo.com.ar', '', '2007-03-13 00:54:15', '', 0, 'Docente');
INSERT INTO "usuario" VALUES(26, 'santi', 'a05bd890c4868ea1807f8564055d1fba77c6ba81', 'Santiago Etchebehere', 'vasco_sti@yahoo.com.ar', '', '2007-03-13 00:54:15', '', 0, 'Docente');
INSERT INTO "usuario" VALUES(27, 'marianito', 'a05bd890c4868ea1807f8564055d1fba77c6ba81', 'Mariano Chouza', 'mchouza@gmail.com', '', '2007-03-13 00:54:15', '', 1, 'Docente');
INSERT INTO "usuario" VALUES(28, 'vero', 'a05bd890c4868ea1807f8564055d1fba77c6ba81', 'Veronica Parla', 'vparla@gmail.com', '', '2007-03-13 00:54:15', '', 0, 'Docente');
INSERT INTO "usuario" VALUES(29, 'mariano', 'a05bd890c4868ea1807f8564055d1fba77c6ba81', 'Mariano Perez', 'mariano@todofrancia.com', '', '2007-03-13 00:54:15', '', 0, 'Docente');
INSERT INTO "usuario" VALUES(30, 'andres', 'a05bd890c4868ea1807f8564055d1fba77c6ba81', 'Andres Veiga', 'aveiga@advtechnology.com.ar', '', '2007-03-13 00:54:15', '', 1, 'Docente');
INSERT INTO "usuario" VALUES(32, 'daro', 'a05bd890c4868ea1807f8564055d1fba77c6ba81', 'Dario Griffo', 'dgriffo@fi.uba.ar', '', '2007-03-13 00:54:15', '', 1, 'Docente');
INSERT INTO "usuario" VALUES(33, 'sony', 'a05bd890c4868ea1807f8564055d1fba77c6ba81', 'Juan Manuel Lopez Baio', 'jbaio@fi.uba.ar', '', '2007-03-13 00:54:15', '', 0, 'Docente');
INSERT INTO "usuario" VALUES(34, 'pablo', 'a05bd890c4868ea1807f8564055d1fba77c6ba81', 'Pablo Riboldi', 'riboldipabloit@yahoo.it', '', '2007-03-13 00:54:15', '', 0, 'Docente');
INSERT INTO "usuario" VALUES(35, 'mazzi', NULL, 'Lautaro Mazzitelli', 'lmazzitelli@gmail.com', '', '2007-03-14 15:34:04', '', 1, 'Docente');
INSERT INTO "usuario" VALUES(36, 'lele', NULL, 'Leandro Fernández', 'drkbugs@gmail.com', '', '2007-03-14 15:39:35', '', 1, 'Docente');

COMMIT;

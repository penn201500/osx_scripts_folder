FasdUAS 1.101.10   ��   ��    k             l      �� ��    � �
Script that cascades the windows of the front most app on the main monitor.

TODO: If Control is held down it cascades the windows of all apps.
       	  l    H 
�� 
 O     H    k    G       l   ������  ��        r        6       4   �� 
�� 
prcs  m    ����   =  	     1   
 ��
�� 
pisf  m    ��
�� boovtrue  o      ���� 0 frontmostapp frontMostApp      l   ������  ��        r        m    ����    o      ���� 0 windowindex windowIndex       X    E !�� " ! k   * @ # #  $ % $ l  * *�� &��   & 9 3	first move window to upper corner of main display.    %  ' ( ' l  * *�� )��   ) P J  make the position of cascade actually cascade by 25 pixels in x and in y    (  * + * l  * : , - , r   * : . / . J   * 6 0 0  1 2 1 [   * / 3 4 3 l  * - 5�� 5 ]   * - 6 7 6 o   * +���� 0 windowindex windowIndex 7 m   + ,���� ��   4 m   - .����  2  8�� 8 [   / 4 9 : 9 l  / 2 ;�� ; ]   / 2 < = < o   / 0���� 0 windowindex windowIndex = m   0 1���� ��   : m   2 3���� ��   / n       > ? > 1   7 9��
�� 
posn ? o   6 7���� 0 i   -   {0, 22}    +  @ A @ l  ; ;������  ��   A  B C B l  ; ;�� D��   D   increment the index    C  E�� E r   ; @ F G F [   ; > H I H o   ; <���� 0 windowindex windowIndex I m   < =����  G o      ���� 0 windowindex windowIndex��  �� 0 i   " n     J K J 2   ��
�� 
cwin K o    ���� 0 frontmostapp frontMostApp    L�� L l  F F������  ��  ��    m      M M�null     ߀��  �System Events.app���Ѐ�����0K; �����р�8 �0K;     Ѐ�        sevs   alis    |  Kermit                     �� H+    �System Events.app                                                h���        ����  	                CoreServices    �1�      ��e      �  �  �  4Kermit:System:Library:CoreServices:System Events.app  $  S y s t e m   E v e n t s . a p p    K e r m i t  -System/Library/CoreServices/System Events.app   / ��  ��   	  N�� N l     ������  ��  ��       �� O P Q������   O ��������
�� .aevtoappnull  �   � ****�� 0 frontmostapp frontMostApp�� 0 windowindex windowIndex��   P �� R���� S T��
�� .aevtoappnull  �   � **** R k     H U U  ����  ��  ��   S ���� 0 i   T  M�� V����������������������
�� 
prcs V  
�� 
pisf�� 0 frontmostapp frontMostApp�� 0 windowindex windowIndex
�� 
cwin
�� 
kocl
�� 
cobj
�� .corecnte****       ****�� �� �� 
�� 
posn�� I� E*�k/�[�,\Ze81E�OjE�O ,��-[��l 	kh  �� ��� �lv��,FO�kE�[OY��OPU Q  W W  M�� X
�� 
pcap X � Y Y  S y s t e m   E v e n t s��  ��  ascr  ��ޭ
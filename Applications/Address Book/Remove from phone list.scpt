FasdUAS 1.101.10   ��   ��    k             l      ��  ��    Z T
This script will remove people from the gPhoneGroup that are in the gArchiveGroup

     � 	 	 � 
 T h i s   s c r i p t   w i l l   r e m o v e   p e o p l e   f r o m   t h e   g P h o n e G r o u p   t h a t   a r e   i n   t h e   g A r c h i v e G r o u p 
 
   
  
 l     ��������  ��  ��        l     ��  ��     	 settings     �      s e t t i n g s      l     ����  r         m     ��
�� boovtrue  o      ���� 0 blog bLog��  ��        l    ����  r        m       �    A r c h i v e  o      ���� 0 garchivegroup gArchiveGroup��  ��        l    ����  r       !   m    	 " " � # # 
 P h o n e ! o      ���� 0 gphonegroup gPhoneGroup��  ��     $ % $ l     ��������  ��  ��   %  &�� & l   � '���� ' O    � ( ) ( k    � * *  + , + l   ��������  ��  ��   ,  - . - r     / 0 / 2   ��
�� 
azf4 0 o      ���� 0 	allpeople 	AllPeople .  1 2 1 l   �� 3 4��   3 , &set AllPeople to people of group "Old"    4 � 5 5 L s e t   A l l P e o p l e   t o   p e o p l e   o f   g r o u p   " O l d " 2  6 7 6 l   ��������  ��  ��   7  8 9 8 r     : ; : n     < = < 2   ��
�� 
azf4 = 4    �� >
�� 
azf5 > o    ���� 0 garchivegroup gArchiveGroup ; o      ���� "0 peopletoarchive peopleToArchive 9  ? @ ? I   $�� A��
�� .corecnte****       **** A o     ���� "0 peopletoarchive peopleToArchive��   @  B C B I  % ,�� D��
�� .corecnte****       **** D 2  % (��
�� 
azf4��   C  E F E l  - -��������  ��  ��   F  G H G r   - 3 I J I 4   - 1�� K
�� 
azf5 K o   / 0���� 0 gphonegroup gPhoneGroup J o      ���� 0 
phonegroup 
phoneGroup H  L M L r   4 = N O N I  4 ;�� P��
�� .corecnte****       **** P n   4 7 Q R Q 2  5 7��
�� 
azf4 R o   4 5���� 0 
phonegroup 
phoneGroup��   O o      ���� 0 oldgroupsize oldGroupSize M  S T S l  > >��������  ��  ��   T  U V U l  > >�� W X��   W U O no workee - (people whoose groups do not contain peopleToArchive) in AllPeople    X � Y Y �   n o   w o r k e e   -   ( p e o p l e   w h o o s e   g r o u p s   d o   n o t   c o n t a i n   p e o p l e T o A r c h i v e )   i n   A l l P e o p l e V  Z [ Z l  > >��������  ��  ��   [  \ ] \ l  > >��������  ��  ��   ]  ^ _ ^ X   > � `�� a ` k   N � b b  c d c l  N N�� e f��   e  display dialog thePerson    f � g g 0 d i s p l a y   d i a l o g   t h e P e r s o n d  h i h r   N S j k j n   N Q l m l 2  O Q��
�� 
azf5 m o   N O���� 0 	theperson 	thePerson k o      ���� 0 	thegroups 	theGroups i  n o n l  T T��������  ��  ��   o  p q p X   T � r�� s r Z   d � t u���� t =  d k v w v n   d i x y x 1   e i��
�� 
pnam y o   d e���� 0 agroup aGroup w o   i j���� 0 gphonegroup gPhoneGroup u k   n � z z  { | { l  n n�� } ~��   }   remove this person    ~ �   &   r e m o v e   t h i s   p e r s o n |  � � � l  n n�� � ���   � , &display dialog (get name of thePerson)    � � � � L d i s p l a y   d i a l o g   ( g e t   n a m e   o f   t h e P e r s o n ) �  � � � I  n w�� � �
�� .az00az46null���    azf6 � o   n o���� 0 	theperson 	thePerson � �� ���
�� 
az47 � o   r s���� 0 
phonegroup 
phoneGroup��   �  ��� � Z  x � � ����� � o   x y���� 0 blog bLog � I  | ��� ���
�� .ascrcmnt****      � **** � b   | � � � � m   |  � � � � �  R e m o v i n g   � n    � � � � 1   � ���
�� 
pnam � o    ����� 0 	theperson 	thePerson��  ��  ��  ��  ��  ��  �� 0 agroup aGroup s o   W X���� 0 	thegroups 	theGroups q  ��� � l  � ���������  ��  ��  ��  �� 0 	theperson 	thePerson a o   A B���� "0 peopletoarchive peopleToArchive _  � � � l  � ���������  ��  ��   �  � � � r   � � � � � I  � ��� ���
�� .corecnte****       **** � n   � � � � � 2  � ���
�� 
azf4 � o   � ����� 0 
phonegroup 
phoneGroup��   � o      ���� 0 newgroupsize newGroupSize �  � � � l  � ���������  ��  ��   �  � � � r   � � � � � b   � � � � � b   � � � � � b   � � � � � b   � � � � � b   � � � � � b   � � � � � b   � � � � � b   � � � � � o   � ����� 0 gphonegroup gPhoneGroup � m   � � � � � � �     g r o u p   u p d a t e d :   � o   � ���
�� 
ret  � l 	 � � ����� � m   � � � � � � � $   o l d   g r o u p   s i z e   =  ��  ��   � o   � ����� 0 oldgroupsize oldGroupSize � o   � ���
�� 
ret  � l 	 � � ����� � m   � � � � � � � $   n e w   g r o u p   s i z e   =  ��  ��   � o   � ����� 0 newgroupsize newGroupSize � o   � ���
�� 
ret  � o      ���� 0 	theresult 	theResult �  � � � l  � ���������  ��  ��   �  � � � l  � ��� � ���   �   for debugging    � � � �    f o r   d e b u g g i n g �  � � � l  � ��� � ���   � 3 -	display dialog theResult giving up after 300    � � � � Z 	 d i s p l a y   d i a l o g   t h e R e s u l t   g i v i n g   u p   a f t e r   3 0 0 �  � � � l  � ���������  ��  ��   �  ��� � L   � � � � o   � ��� 0 	theresult 	theResult��   ) m     � ��                                                                                  adrb   alis    d  Danger Mouse               ��KXH+     Address Book.app                                                ���u�        ����  	                Applications    �ڭ�      ���8         *Danger Mouse:Applications:Address Book.app  "  A d d r e s s   B o o k . a p p    D a n g e r   M o u s e  Applications/Address Book.app   / ��  ��  ��  ��       �~ � ��~   � �}
�} .aevtoappnull  �   � **** � �| ��{�z � ��y
�| .aevtoappnull  �   � **** � k     � � �   � �   � �   � �  &�x�x  �{  �z   � �w�v�w 0 	theperson 	thePerson�v 0 agroup aGroup � �u �t "�s ��r�q�p�o�n�m�l�k�j�i�h�g�f ��e�d ��c � ��b�u 0 blog bLog�t 0 garchivegroup gArchiveGroup�s 0 gphonegroup gPhoneGroup
�r 
azf4�q 0 	allpeople 	AllPeople
�p 
azf5�o "0 peopletoarchive peopleToArchive
�n .corecnte****       ****�m 0 
phonegroup 
phoneGroup�l 0 oldgroupsize oldGroupSize
�k 
kocl
�j 
cobj�i 0 	thegroups 	theGroups
�h 
pnam
�g 
az47
�f .az00az46null���    azf6
�e .ascrcmnt****      � ****�d 0 newgroupsize newGroupSize
�c 
ret �b 0 	theresult 	theResult�y �eE�O�E�O�E�O� �*�-E�O*��/�-E�O�j 
O*�-j 
O*��/E�O��-j 
E�O ^�[��l 
kh  ��-E�O A�[��l 
kh �a ,�  $�a �l O� a �a ,%j Y hY h[OY��OP[OY��O��-j 
E` O�a %_ %a %�%_ %a %_ %_ %E` O_ U ascr  ��ޭ
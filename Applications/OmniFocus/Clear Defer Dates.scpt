FasdUAS 1.101.10   ��   ��    k             p         ������ 0 
gdeferdate 
gDeferDate��      	  l     
���� 
 r         m        ldt     ��  o      ���� 0 
gdeferdate 
gDeferDate��  ��   	     l     ��������  ��  ��        l   � ����  O    �    O    �    k    �       l   ��  ��     Get selection     �    G e t   s e l e c t i o n      l   ��   ��      assumes one selection      � ! ! ,   a s s u m e s   o n e   s e l e c t i o n   " # " r     $ % $ 2   ��
�� 
OTst % o      ���� 0 thesel theSel #  & ' & l   �� ( )��   ( h b set theTask to value of item 1 of theSel -- to get the first item in the list; for reference only    ) � * * �   s e t   t h e T a s k   t o   v a l u e   o f   i t e m   1   o f   t h e S e l   - -   t o   g e t   t h e   f i r s t   i t e m   i n   t h e   l i s t ;   f o r   r e f e r e n c e   o n l y '  + , + l   ��������  ��  ��   ,  - . - l   �� / 0��   / N H loop through all items and set a far out defer date; no error checking!    0 � 1 1 �   l o o p   t h r o u g h   a l l   i t e m s   a n d   s e t   a   f a r   o u t   d e f e r   d a t e ;   n o   e r r o r   c h e c k i n g ! .  2�� 2 X    � 3�� 4 3 k   * � 5 5  6 7 6 r   * / 8 9 8 n   * - : ; : 1   + -��
�� 
valL ; o   * +���� 0 theitem theItem 9 o      ���� 0 thetask theTask 7  < = < e   0 4 > > n   0 4 ? @ ? 1   1 3��
�� 
FCDs @ o   0 1���� 0 thetask theTask =  A�� A Z   5 � B C�� D B =  5 : E F E n   5 8 G H G 1   6 8��
�� 
FCDs H o   5 6���� 0 thetask theTask F m   8 9��
�� 
msng C Z   = ~ I J�� K I =  = B L M L n   = @ N O N 1   > @��
�� 
FCDd O o   = >���� 0 thetask theTask M m   @ A��
�� 
msng J Z   E f P Q�� R P =  E L S T S n   E J U V U 1   F J��
�� 
FC#t V o   E F���� 0 thetask theTask T m   J K����   Q n  O U W X W I   P U�� Y���� 0 setdeferdate setDeferDate Y  Z�� Z o   P Q���� 0 thetask theTask��  ��   X  f   O P��   R k   X f [ [  \ ] \ l  X X�� ^ _��   ^ G A don't change defer date this is a parent task (i.e. has >0 tasks    _ � ` ` �   d o n ' t   c h a n g e   d e f e r   d a t e   t h i s   i s   a   p a r e n t   t a s k   ( i . e .   h a s   > 0   t a s k s ]  a�� a I  X f�� b��
�� .ascrcmnt****      � **** b b   X b c d c m   X [ e e � f f f T a s k   i s   a   p a r e n t   t a s k ;   s k i p p i n g   d e f e r   d a t e   c h a n g e :   d l  [ a g���� g e   [ a h h n   [ a i j i 1   \ `��
�� 
pnam j o   [ \���� 0 thetask theTask��  ��  ��  ��  ��   K k   i ~ k k  l m l l  i i�� n o��   n 5 / don't change defer date if there is a due date    o � p p ^   d o n ' t   c h a n g e   d e f e r   d a t e   i f   t h e r e   i s   a   d u e   d a t e m  q r q I  i w�� s��
�� .ascrcmnt****      � **** s b   i s t u t m   i l v v � w w b T a s k   h a s   a   d u e   d a t e ;   s k i p p i n g   d e f e r   d a t e   c h a n g e :   u l  l r x���� x e   l r y y n   l r z { z 1   m q��
�� 
pnam { o   l m���� 0 thetask theTask��  ��  ��   r  |�� | n   x ~ } ~ } 1   y }��
�� 
pALL ~ o   x y���� 0 thetask theTask��  ��   D k   � �    � � � l  � ��� � ���   � 0 * don't change a defer date that I entered.    � � � � T   d o n ' t   c h a n g e   a   d e f e r   d a t e   t h a t   I   e n t e r e d . �  � � � l  � ��� � ���   � A ; ask to change the defer date only if the list has one item    � � � � v   a s k   t o   c h a n g e   t h e   d e f e r   d a t e   o n l y   i f   t h e   l i s t   h a s   o n e   i t e m �  � � � Z   � � � ����� � =  � � � � � l  � � ����� � l  � � ����� � I  � ��� ���
�� .corecnte****       **** � o   � ����� 0 thesel theSel��  ��  ��  ��  ��   � m   � �����  � k   � � � �  � � � r   � � � � � I  � ��� � �
�� .sysodlogaskr        TEXT � b   � � � � � b   � � � � � b   � � � � � b   � � � � � m   � � � � � � � 2 C h a n g e   t h e   d e f e r   d a t e   o f   � l  � � ����� � e   � � � � n   � � � � � 1   � ���
�� 
pnam � o   � ����� 0 thetask theTask��  ��   � m   � � � � � � �    t o   � o   � ����� 0 
gdeferdate 
gDeferDate � m   � � � � � � �  ? � �� � �
�� 
btns � J   � � � �  � � � m   � � � � � � �  N o �  ��� � m   � � � � � � �  Y e s��   � �� ���
�� 
dflt � m   � � � � � � �  Y e s��   � o      ���� 0 response   �  � � � l  � ���������  ��  ��   �  � � � Z   � � � ����� � =  � � � � � l  � � ����� � n   � � � � � 1   � ���
�� 
bhit � o   � ����� 0 response  ��  ��   � m   � � � � � � �  Y e s � n  � � � � � I   � ��� ����� 0 setdeferdate setDeferDate �  ��� � o   � ����� 0 thetask theTask��  ��   �  f   � ���  ��   �  ��� � l  � ���������  ��  ��  ��  ��  ��   �  ��� � I  � ��� ���
�� .ascrcmnt****      � **** � b   � � � � � m   � � � � � � � > T a s k   a l r e a d y   h a s   a   d e f e r   d a t e :   � l  � � ����� � e   � � � � n   � � � � � 1   � ���
�� 
pnam � o   � ����� 0 thetask theTask��  ��  ��  ��  ��  �� 0 theitem theItem 4 o    ���� 0 thesel theSel��    n     � � � 1    ��
�� 
FCcn � n     � � � 4   �� �
�� 
FCdw � m    ����  � 4   �� �
�� 
docu � m   
 ����   m     � ��                                                                                  OFOC  alis    X  Macintosh HD               ���H+  i��OmniFocus.app                                                  ����Y��        ����  	                Applications    ��x      �Z?4    i��  (Macintosh HD:Applications: OmniFocus.app    O m n i F o c u s . a p p    M a c i n t o s h   H D  Applications/OmniFocus.app  / ��  ��  ��     � � � l     ��������  ��  ��   �  ��� � i      � � � I      �� ����� 0 setdeferdate setDeferDate �  ��� � o      ���� 0 thetask theTask��  ��   � O     
 � � � r    	 � � � o    ���� 0 
gdeferdate 
gDeferDate � n       � � � 1    ��
�� 
FCDs � o    ���� 0 thetask theTask � m      � ��                                                                                  OFOC  alis    X  Macintosh HD               ���H+  i��OmniFocus.app                                                  ����Y��        ����  	                Applications    ��x      �Z?4    i��  (Macintosh HD:Applications: OmniFocus.app    O m n i F o c u s . a p p    M a c i n t o s h   H D  Applications/OmniFocus.app  / ��  ��       �� � � ���   � ����� 0 setdeferdate setDeferDate
� .aevtoappnull  �   � **** � �~ ��}�| � ��{�~ 0 setdeferdate setDeferDate�} �z ��z  �  �y�y 0 thetask theTask�|   � �x�x 0 thetask theTask �  ��w�v�w 0 
gdeferdate 
gDeferDate
�v 
FCDs�{ � ���,FU � �u ��t�s � ��r
�u .aevtoappnull  �   � **** � k     � � �   � �  �q�q  �t  �s   � �p�p 0 theitem theItem � % �o ��n�m�l�k�j�i�h�g�f�e�d�c�b�a�` e�_�^ v�] � � ��\ � ��[ ��Z�Y�X�W � ��o 0 
gdeferdate 
gDeferDate
�n 
docu
�m 
FCdw
�l 
FCcn
�k 
OTst�j 0 thesel theSel
�i 
kocl
�h 
cobj
�g .corecnte****       ****
�f 
valL�e 0 thetask theTask
�d 
FCDs
�c 
msng
�b 
FCDd
�a 
FC#t�` 0 setdeferdate setDeferDate
�_ 
pnam
�^ .ascrcmnt****      � ****
�] 
pALL
�\ 
btns
�[ 
dflt�Z 
�Y .sysodlogaskr        TEXT�X 0 response  
�W 
bhit�r ��E�O� �*�k/�k/�, �*�-E�O ��[��l 
kh  ��,E�O��,EO��,�  F��,�  &�a ,j  )�k+ Y a �a ,E%j Y a �a ,E%j O�a ,EY i�j 
k  Oa �a ,E%a %�%a %a a a lva a a   E` !O_ !a ",a #  )�k+ Y hOPY hOa $�a ,E%j [OY�<UUascr  ��ޭ
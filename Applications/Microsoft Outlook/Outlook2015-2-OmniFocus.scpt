FasdUAS 1.101.10   ��   ��    k             l     ��  ��      Found here:     � 	 	    F o u n d   h e r e :   
  
 l     ��  ��    s m [Integrating Outlook 2015 and OmniFocus � nxhelp]( http://nxhelp.com/2015/01/24/outlook-2015-to-omnifocus/ )     �   �   [ I n t e g r a t i n g   O u t l o o k   2 0 1 5   a n d   O m n i F o c u s      n x h e l p ] (   h t t p : / / n x h e l p . c o m / 2 0 1 5 / 0 1 / 2 4 / o u t l o o k - 2 0 1 5 - t o - o m n i f o c u s /   )      l     ��������  ��  ��        l     ��  ��    , &--------------------------------------     �   L - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -      l     ��  ��    "  PROPERTIES TO BE AJUSTED --     �   8   P R O P E R T I E S   T O   B E   A J U S T E D   - -      l     ��  ��    , &--------------------------------------     �   L - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -     !   l     ��������  ��  ��   !  " # " l     �� $ %��   $ E ? here we specify if we want the quick entry pane (1) or not (0)    % � & & ~   h e r e   w e   s p e c i f y   i f   w e   w a n t   t h e   q u i c k   e n t r y   p a n e   ( 1 )   o r   n o t   ( 0 ) #  ' ( ' j     �� )��  0 showquickentry showQuickEntry ) m     ����  (  * + * l     �� , -��   , W Q if you dont want to have omnifocus be brought to the foreground, set this to 0,     - � . . �   i f   y o u   d o n t   w a n t   t o   h a v e   o m n i f o c u s   b e   b r o u g h t   t o   t h e   f o r e g r o u n d ,   s e t   t h i s   t o   0 ,   +  / 0 / l     �� 1 2��   1 A ; however, this will only take effect if showQuickEntry is 1    2 � 3 3 v   h o w e v e r ,   t h i s   w i l l   o n l y   t a k e   e f f e c t   i f   s h o w Q u i c k E n t r y   i s   1 0  4 5 4 j    �� 6�� 80 bringomnifocustoforeground bringOmnifocusToForeground 6 m    ����   5  7 8 7 l     ��������  ��  ��   8  9 : 9 l     �� ; <��   ; 9 3 set this to 0 if you dont want an email attachment    < � = = f   s e t   t h i s   t o   0   i f   y o u   d o n t   w a n t   a n   e m a i l   a t t a c h m e n t :  > ? > j    �� @�� (0 attachmailtooftask attachMailToOFTask @ m    ����  ?  A B A l     ��������  ��  ��   B  C D C l     �� E F��   E   set this to    F � G G    s e t   t h i s   t o D  H I H l     �� J K��   J , & 0: for not putting the focus anywhere    K � L L L   0 :   f o r   n o t   p u t t i n g   t h e   f o c u s   a n y w h e r e I  M N M l     �� O P��   O 8 2 1: for putting the focus into the task name field    P � Q Q d   1 :   f o r   p u t t i n g   t h e   f o c u s   i n t o   t h e   t a s k   n a m e   f i e l d N  R S R l     �� T U��   T 4 . 2: for putting the focus in the project field    U � V V \   2 :   f o r   p u t t i n g   t h e   f o c u s   i n   t h e   p r o j e c t   f i e l d S  W X W l     �� Y Z��   Y 6 0 3: for putting the focus into the context field    Z � [ [ `   3 :   f o r   p u t t i n g   t h e   f o c u s   i n t o   t h e   c o n t e x t   f i e l d X  \ ] \ l     �� ^ _��   ^ 2 , 4: for putting the focus into the due field    _ � ` ` X   4 :   f o r   p u t t i n g   t h e   f o c u s   i n t o   t h e   d u e   f i e l d ]  a b a l     �� c d��   c H B default: a reasonable default is 2 to set it to the project field    d � e e �   d e f a u l t :   a   r e a s o n a b l e   d e f a u l t   i s   2   t o   s e t   i t   t o   t h e   p r o j e c t   f i e l d b  f g f j   	 �� h�� (0 focusspecificfield focusSpecificField h m   	 
����  g  i j i l     ��������  ��  ��   j  k l k l     �� m n��   m n h CAUTION: use at your own RISK, this will delete the original mail after it was transferred to OmniFocus    n � o o �   C A U T I O N :   u s e   a t   y o u r   o w n   R I S K ,   t h i s   w i l l   d e l e t e   t h e   o r i g i n a l   m a i l   a f t e r   i t   w a s   t r a n s f e r r e d   t o   O m n i F o c u s l  p q p j    �� r�� 60 deletemailafterprocessing deleteMailAfterProcessing r m    ����   q  s t s l     ��������  ��  ��   t  u v u l     �� w x��   w 8 2 configure mail post processing, if this is set to    x � y y d   c o n f i g u r e   m a i l   p o s t   p r o c e s s i n g ,   i f   t h i s   i s   s e t   t o v  z { z l     �� | }��   | ^ X 0: for not moving the mail (use 0 if you want to enable mail deletion as defined above)    } � ~ ~ �   0 :   f o r   n o t   m o v i n g   t h e   m a i l   ( u s e   0   i f   y o u   w a n t   t o   e n a b l e   m a i l   d e l e t i o n   a s   d e f i n e d   a b o v e ) {   �  l     �� � ���   � 2 , 1: if you want to move the mail to a folder    � � � � X   1 :   i f   y o u   w a n t   t o   m o v e   t h e   m a i l   t o   a   f o l d e r �  � � � l     ��������  ��  ��   �  � � � j    �� ��� $0 movemailtofolder moveMailToFolder � m    ����   �  � � � l     ��������  ��  ��   �  � � � l     �� � ���   � _ Y configure the target folder name to where the mail should be moved. Needs to exist first    � � � � �   c o n f i g u r e   t h e   t a r g e t   f o l d e r   n a m e   t o   w h e r e   t h e   m a i l   s h o u l d   b e   m o v e d .   N e e d s   t o   e x i s t   f i r s t �  � � � j    �� ��� ,0 targetmailfoldername targetMailFolderName � m     � � � � �  A r c h i v e �  � � � l     ��������  ��  ��   �  � � � l     ��������  ��  ��   �  � � � l   � ����� � O    � � � � k   � � �  � � � l   �� � ���   � 5 / get the currently selected message or messages    � � � � ^   g e t   t h e   c u r r e n t l y   s e l e c t e d   m e s s a g e   o r   m e s s a g e s �  � � � r    	 � � � 1    ��
�� 
CMgs � o      ���� $0 selectedmessages selectedMessages �  � � � l  
 
�� � ���   � E ? if there are no messages selected, warn the user and then quit    � � � � ~   i f   t h e r e   a r e   n o   m e s s a g e s   s e l e c t e d ,   w a r n   t h e   u s e r   a n d   t h e n   q u i t �  � � � Z   
  � ����� � =  
  � � � o   
 ���� $0 selectedmessages selectedMessages � J    ����   � k     � �  � � � I   �� � �
�� .sysodlogaskr        TEXT � m     � � � � � � P l e a s e   s e l e c t   o n e   o r   m o r e   m e s s a g e s   f i r s t   a n d   t h e n   r u n   t h i s   s c r i p t . � �� ���
�� 
disp � m    ���� ��   �  ��� � L    ����  ��  ��  ��   �  � � � l     ��������  ��  ��   �  ��� � X    � ��� � � k   0� � �  � � � l  0 0��������  ��  ��   �  � � � r   0 5 � � � n   0 3 � � � 1   1 3��
�� 
subj � o   0 1���� 0 
themessage 
theMessage � o      ���� 0 thename theName �  � � � l  6 6��������  ��  ��   �  � � � l  6 6�� � ���   � N H Check for a blank subject line, check provided by Peter as well as Paul    � � � � �   C h e c k   f o r   a   b l a n k   s u b j e c t   l i n e ,   c h e c k   p r o v i d e d   b y   P e t e r   a s   w e l l   a s   P a u l �  � � � Z   6 C � ����� � =  6 9 � � � o   6 7���� 0 thename theName � m   7 8��
�� 
msng � r   < ? � � � m   < = � � � � �  N o   S u b j e c t � o      ���� 0 thename theName��  ��   �  � � � l  D D�� � ���   �  
 End check    � � � �    E n d   c h e c k �  � � � l  D D��������  ��  ��   �  � � � r   D I � � � n   D G � � � 1   E G��
�� 
ctnt � o   D E���� 0 
themessage 
theMessage � o      ���� 0 
thecontent 
theContent �  � � � r   J U � � � c   J Q � � � n   J M � � � 1   K M��
�� 
ID   � o   J K���� 0 
themessage 
theMessage � m   M P��
�� 
TEXT � o      ���� 0 theid theID �  � � � r   V _ � � � n   V [ � � � 1   W [��
�� 
sndr � o   V W���� 0 
themessage 
theMessage � o      ���� 0 	thesender 	theSender �  � � � l  ` `��������  ��  ��   �  � � � l  ` `�� � ���   � W Q some messages dont have a sender name so lets make sure that we catch this error    � � � � �   s o m e   m e s s a g e s   d o n t   h a v e   a   s e n d e r   n a m e   s o   l e t s   m a k e   s u r e   t h a t   w e   c a t c h   t h i s   e r r o r �  � � � r   ` g �  � m   ` c �  U n k n o w n   S e n d e r  o      ���� $0 thesenderaddress theSenderAddress �  r   h o m   h k �  N o   S e n d e r   N a m e o      ���� 0 thesendername theSenderName 	
	 Q   p ��� r   s ~ n   s z 1   v z��
�� 
pnam o   s v���� 0 	thesender 	theSender o      ���� 0 thesendername theSenderName R      ������
�� .ascrerr ****      � ****��  ��  ��  
  Q   � �� r   � � n   � � 1   � ��~
�~ 
radd o   � ��}�} 0 	thesender 	theSender o      �|�| $0 thesenderaddress theSenderAddress R      �{�z�y
�{ .ascrerr ****      � ****�z  �y  �    l  � ��x�w�v�x  �w  �v    r   � � n   � �  1   � ��u
�u 
tims  o   � ��t�t 0 
themessage 
theMessage o      �s�s 0 msgtime msgTime !"! r   � �#$# b   � �%&% b   � �'(' b   � �)*) b   � �+,+ b   � �-.- b   � �/0/ b   � �121 b   � �343 b   � �565 b   � �787 b   � �9:9 1   � ��r
�r 
lnfd: 1   � ��q
�q 
lnfd8 m   � �;; �<<  F r o m :  6 o   � ��p�p 0 thesendername theSenderName4 m   � �== �>>    [2 o   � ��o�o $0 thesenderaddress theSenderAddress0 m   � �?? �@@  ]. o   � ��n
�n 
ret , m   � �AA �BB  D a t e :  * o   � ��m�m 0 msgtime msgTime( o   � ��l
�l 
ret & o   � ��k
�k 
ret $ o      �j�j "0 omnifocusheader OmniFocusHeader" CDC l  � ��i�h�g�i  �h  �g  D EFE l  � ��fGH�f  G k e here we try to spotlight-search for the Selected Outlook message using the unique Outlook Message ID   H �II �   h e r e   w e   t r y   t o   s p o t l i g h t - s e a r c h   f o r   t h e   S e l e c t e d   O u t l o o k   m e s s a g e   u s i n g   t h e   u n i q u e   O u t l o o k   M e s s a g e   I DF JKJ l  � ��eLM�e  L @ : and save the file name (including full path) to myMsgFile   M �NN t   a n d   s a v e   t h e   f i l e   n a m e   ( i n c l u d i n g   f u l l   p a t h )   t o   m y M s g F i l eK OPO l  � ��d�c�b�d  �c  �b  P QRQ l  � ��aST�a  S y s note that this does not work on my system since outlook is claiming that the msg is from a different identity, FFS   T �UU �   n o t e   t h a t   t h i s   d o e s   n o t   w o r k   o n   m y   s y s t e m   s i n c e   o u t l o o k   i s   c l a i m i n g   t h a t   t h e   m s g   i s   f r o m   a   d i f f e r e n t   i d e n t i t y ,   F F SR VWV l  � ��`XY�`  X K E		set myShellCmd to "mdfind com_microsoft_outlook_recordID==" & theID   Y �ZZ � 	 	 s e t   m y S h e l l C m d   t o   " m d f i n d   c o m _ m i c r o s o f t _ o u t l o o k _ r e c o r d I D = = "   &   t h e I DW [\[ l  � ��_]^�_  ] U O		set myMsgFile to the first item of paragraphs of (do shell script myShellCmd)   ^ �__ � 	 	 s e t   m y M s g F i l e   t o   t h e   f i r s t   i t e m   o f   p a r a g r a p h s   o f   ( d o   s h e l l   s c r i p t   m y S h e l l C m d )\ `a` l  � ��^�]�\�^  �]  �\  a bcb l  � ��[de�[  d f ` set the path to a temp area on your HD to temporarily store the attachment to be loaded into OF   e �ff �   s e t   t h e   p a t h   t o   a   t e m p   a r e a   o n   y o u r   H D   t o   t e m p o r a r i l y   s t o r e   t h e   a t t a c h m e n t   t o   b e   l o a d e d   i n t o   O Fc ghg r   � �iji b   � �klk b   � �mnm b   � �opo l  � �q�Z�Yq n   � �rsr 1   � ��X
�X 
psxps l  � �t�W�Vt I  � ��Uuv
�U .earsffdralis        afdru m   � ��T
�T afdrcusrv �Sw�R
�S 
rtypw m   � ��Q
�Q 
TEXT�R  �W  �V  �Z  �Y  p m   � �xx �yy ( D o c u m e n t s / O u t l o o k M s gn o   � ��P�P 0 theid theIDl m   � �zz �{{  . e m lj o      �O�O 0 thefilename theFileNameh |}| Z   ,~�N�M~ l  ��L�K� =  ��� o   �J�J (0 attachmailtooftask attachMailToOFTask� m  �I�I �L  �K   k  
(�� ��� O  
��� I �H��G
�H .ascrcmnt****      � ****� b  ��� m  �� ��� " s a v i n g   t h e   f i l e :  � o  �F�F 0 thefilename theFileName�G  � m  
���                                                                                  OFOC  alis    X  Macintosh HD               �`iYH+     AOmniFocus.app                                                   !V��v        ����  	                Applications    �`��      �X�       A  (Macintosh HD:Applications: OmniFocus.app    O m n i F o c u s . a p p    M a c i n t o s h   H D  Applications/OmniFocus.app  / ��  � ��E� I (�D��
�D .coresavenull���     obj � o  �C�C 0 
themessage 
theMessage� �B��A
�B 
kfil� o  !$�@�@ 0 thefilename theFileName�A  �E  �N  �M  } ��� l --�?�>�=�?  �>  �=  � ��� l --�<���<  � d ^ here we convert the HTML of the Message Content to plain text to insert into the Note section   � ��� �   h e r e   w e   c o n v e r t   t h e   H T M L   o f   t h e   M e s s a g e   C o n t e n t   t o   p l a i n   t e x t   t o   i n s e r t   i n t o   t h e   N o t e   s e c t i o n� ��� l --�;���;  � ; 5 update: fixed input encoding as suggested by @Andrew   � ��� j   u p d a t e :   f i x e d   i n p u t   e n c o d i n g   a s   s u g g e s t e d   b y   @ A n d r e w� ��� r  -B��� I ->�:��9
�: .sysoexecTEXT���     TEXT� l -:��8�7� b  -:��� b  -6��� m  -0�� ��� 
 e c h o  � l 05��6�5� n  05��� 1  15�4
�4 
strq� o  01�3�3 0 
thecontent 
theContent�6  �5  � m  69�� ��� �   | t e x t u t i l   - f o r m a t   h t m l   - i n p u t e n c o d i n g   U T F - 8   - c o n v e r t   t x t   - s t d i n   - s t d o u t�8  �7  �9  � o      �2�2 0 mytxtcontent myTxtContent� ��� l CC�1�0�/�1  �0  �/  � ��� r  CV��� b  CR��� b  CN��� b  CJ��� o  CF�.�. "0 omnifocusheader OmniFocusHeader� 1  FI�-
�- 
lnfd� 1  JM�,
�, 
lnfd� o  NQ�+�+ 0 mytxtcontent myTxtContent� o      �*�* 0 thetxtcontent theTxtContent� ��� l WW�)�(�'�)  �(  �'  � ��� l WW�&�%�$�&  �%  �$  � ��� O  W���� k  ]��� ��� r  ]f��� 1  ]b�#
�# 
FCDo� o      �"�" 0 thedoc theDoc� ��� r  gl��� o  gh�!�! 0 thename theName� o      � �  0 thetask theTask� ��� r  mt��� o  mp�� 0 thetxtcontent theTxtContent� o      �� 0 thenote theNote� ��� Z  u������ l u|���� = u|��� o  uz��  0 showquickentry showQuickEntry� m  z{�� �  �  � O  +��� k  �*�� ��� r  ����� I �����
� .corecrel****      � null�  � ���
� 
kocl� m  ���
� 
FCit� ���
� 
prdt� K  ���� ���
� 
pnam� o  ���� 0 thetask theTask� ���
� 
FCno� o  ���� 0 thetxtcontent theTxtContent�  �  � o      �� 0 newtask NewTask� ��� Z  ������
� l ����	�� = ����� o  ���� (0 attachmailtooftask attachMailToOFTask� m  ���� �	  �  � k  ���� ��� O ����� r  ����� l ������ 4  ����
� 
psxf� o  ���� 0 thefilename theFileName�  �  � o      �� 0 theattachment theAttachment�  f  ��� ��� l ��� �����   ��  ��  � ���� O  ����� I �������
�� .corecrel****      � null��  � ����
�� 
kocl� m  ����
�� 
OSfA� �����
�� 
prdt� K  ���� �� 
�� 
atfn  o  ������ 0 theattachment theAttachment ����
�� 
OSin m  ����
�� boovtrue��  ��  � l ������ n  �� 1  ����
�� 
FCno o  ������ 0 newtask NewTask��  ��  ��  �  �
  �  Z  �	���� l ��
����
 = �� o  ������ 80 bringomnifocustoforeground bringOmnifocusToForeground m  ������ ��  ��  	 I �������
�� .miscactvnull��� ��� null��  ��  ��  ��    I ������
�� .aevtodocnull  �    alis��  ��   �� O  * U  ) I $����
�� .prcskprsnull���     ctxt 1   ��
�� 
tab ��   o  ���� (0 focusspecificfield focusSpecificField m  �                                                                                  sevs  alis    �  Macintosh HD               �`iYH+     !System Events.app                                               P��(]        ����  	                CoreServices    �`��      ���       !         =Macintosh HD:System: Library: CoreServices: System Events.app   $  S y s t e m   E v e n t s . a p p    M a c i n t o s h   H D  -System/Library/CoreServices/System Events.app   / ��  ��  � 1  ���
�� 
FCQE�  � k  .�  l ..����   \ V we dont want the quick entry panel but the task will immediately show up in the inbox    � �   w e   d o n t   w a n t   t h e   q u i c k   e n t r y   p a n e l   b u t   t h e   t a s k   w i l l   i m m e d i a t e l y   s h o w   u p   i n   t h e   i n b o x �� O  .� O  4�  k  =�!! "#" r  =_$%$ I =[����&
�� .corecrel****      � null��  & ��'(
�� 
kocl' m  ?B��
�� 
FCit( ��)��
�� 
prdt) K  EU** ��+,
�� 
pnam+ o  HK���� 0 thetask theTask, ��-��
�� 
FCno- o  NQ���� 0 thetxtcontent theTxtContent��  ��  % o      ���� 0 newtask NewTask# .��. Z  `�/0����/ l `g1����1 = `g232 o  `e���� (0 attachmailtooftask attachMailToOFTask3 m  ef���� ��  ��  0 O  j�454 I t�����6
�� .corecrel****      � null��  6 ��78
�� 
kocl7 m  vy��
�� 
OSfA8 ��9��
�� 
prdt9 K  |�:: ��;<
�� 
atfn; o  ����� 0 thefilename theFileName< ��=��
�� 
OSin= m  ����
�� boovtrue��  ��  5 l jq>����> n  jq?@? 1  mq��
�� 
FCno@ o  jm���� 0 newtask NewTask��  ��  ��  ��  ��    l 4:A����A 4 4:��B
�� 
docuB m  89���� ��  ��   m  .1CC�                                                                                  OFOC  alis    X  Macintosh HD               �`iYH+     AOmniFocus.app                                                   !V��v        ����  	                Applications    �`��      �X�       A  (Macintosh HD:Applications: OmniFocus.app    O m n i F o c u s . a p p    M a c i n t o s h   H D  Applications/OmniFocus.app  / ��  ��  �  � m  WZDD�                                                                                  OFOC  alis    X  Macintosh HD               �`iYH+     AOmniFocus.app                                                   !V��v        ����  	                Applications    �`��      �X�       A  (Macintosh HD:Applications: OmniFocus.app    O m n i F o c u s . a p p    M a c i n t o s h   H D  Applications/OmniFocus.app  / ��  � EFE l ����������  ��  ��  F GHG l ����IJ��  I J D the message should be removed from Outlook after it gets sent to OF   J �KK �   t h e   m e s s a g e   s h o u l d   b e   r e m o v e d   f r o m   O u t l o o k   a f t e r   i t   g e t s   s e n t   t o   O FH LML Z  ��NO����N l ��P����P = ��QRQ o  ������ 60 deletemailafterprocessing deleteMailAfterProcessingR m  ������ ��  ��  O I ����S��
�� .coredelonull���     obj S o  ������ 0 
themessage 
theMessage��  ��  ��  M TUT Z  ��VW����V l ��X����X = ��YZY o  ������ $0 movemailtofolder moveMailToFolderZ m  ������ ��  ��  W I ����[\
�� .coremovenull���     obj [ o  ������ 0 
themessage 
theMessage\ ��]��
�� 
insh] 4  ����^
�� 
cFld^ o  ������ ,0 targetmailfoldername targetMailFolderName��  ��  ��  U _��_ l ����`a��  ` $ 		display dialog theTxtContent   a �bb < 	 	 d i s p l a y   d i a l o g   t h e T x t C o n t e n t��  �� 0 
themessage 
theMessage � o   # $���� $0 selectedmessages selectedMessages��   � m     cc�                                                                                  OPIM  alis    x  Macintosh HD               �`iYH+     AMicrosoft Outlook.app                                           ̑� ��        ����  	                Applications    �`��      � ��       A  0Macintosh HD:Applications: Microsoft Outlook.app  ,  M i c r o s o f t   O u t l o o k . a p p    M a c i n t o s h   H D  "Applications/Microsoft Outlook.app  / ��  ��  ��   � ded l     ��fg��  f ) # delete all the old leftover emails   g �hh F   d e l e t e   a l l   t h e   o l d   l e f t o v e r   e m a i l se iji l �k����k Q  �lmnl I ����o��
�� .sysoexecTEXT���     TEXTo m  ��pp �qq � r m   ~ / L i b r a r y / C o n t a i n e r s / c o m . m i c r o s o f t . O u t l o o k / D a t a / D o c u m e n t s / O u t l o o k M s g *��  m R      ��rs
�� .ascrerr ****      � ****r l     t����t o      ���� 0 error_message  ��  ��  s ��u��
�� 
errnu l     v����v o      ���� 0 error_number  ��  ��  ��  n O  �wxw I ���y��
�� .ascrcmnt****      � ****y b  ��z{z b  ��|}| b  ��~~ b  ����� m  ���� ��� : E r r o r   d e l e t i n g   o l d   t m p   f i l e s  � o  ������ 0 error_message   m  ���� ���    (} o  ������ 0 error_number  { m  ���� ���  )��  x m  �����                                                                                  OFOC  alis    X  Macintosh HD               �`iYH+     AOmniFocus.app                                                   !V��v        ����  	                Applications    �`��      �X�       A  (Macintosh HD:Applications: OmniFocus.app    O m n i F o c u s . a p p    M a c i n t o s h   H D  Applications/OmniFocus.app  / ��  ��  ��  j ��� l     ��������  ��  ��  � ��� l     ������  � #  bring OmniFocus to the front   � ��� :   b r i n g   O m n i F o c u s   t o   t h e   f r o n t� ��� l     ������  � ( " thanks to tim @ omni for this one   � ��� D   t h a n k s   t o   t i m   @   o m n i   f o r   t h i s   o n e� ��� l     ������  � - ' does not seem to work with OmniFocus 2   � ��� N   d o e s   n o t   s e e m   t o   w o r k   w i t h   O m n i F o c u s   2� ��� l     ��~�}�  �~  �}  � ��� l     �|�{�z�|  �{  �z  � ��� l     �y�x�w�y  �x  �w  � ��� i    ��� I      �v��u�v  0 findandreplace findAndReplace� ��� o      �t�t 
0 tofind  � ��� o      �s�s 0 	toreplace  � ��r� o      �q�q 0 	thestring 	TheString�r  �u  � k     C�� ��� r     ��� 1     �p
�p 
txdl� o      �o�o 0 ditd  � ��� r    	��� m    �n
�n 
msng� o      �m�m 0 res  � ��� r   
 ��� o   
 �l�l 
0 tofind  � 1    �k
�k 
txdl� ��� X    :��j�� Z   " 5���i�� =  " %��� o   " #�h�h 0 res  � m   # $�g
�g 
msng� r   ( +��� o   ( )�f�f 0 tis  � o      �e�e 0 res  �i  � r   . 5��� b   . 3��� b   . 1��� o   . /�d�d 0 res  � o   / 0�c�c 0 	toreplace  � o   1 2�b�b 0 tis  � o      �a�a 0 res  �j 0 tis  � n    ��� 2   �`
�` 
citm� o    �_�_ 0 	thestring 	TheString� ��� r   ; @��� o   ; <�^�^ 0 ditd  � 1   < ?�]
�] 
txdl� ��\� L   A C�� o   A B�[�[ 0 res  �\  � ��� l     �Z�Y�X�Z  �Y  �X  � ��� l     �W���W  � 7 1 currently not used but who knows what might come   � ��� b   c u r r e n t l y   n o t   u s e d   b u t   w h o   k n o w s   w h a t   m i g h t   c o m e� ��� i    ��� I      �V��U�V 0 	urlencode  � ��T� o      �S�S 0 thetext theText�T  �U  � k    �� ��� r     ��� m     �� ���  � o      �R�R 0 
thetextenc 
theTextEnc� ��� X    ��Q�� k    ��� ��� r    ��� o    �P�P 0 eachchar eachChar� o      �O�O 0 usechar useChar� ��� r    !��� I   �N��M
�N .sysoctonshor       TEXT� o    �L�L 0 eachchar eachChar�M  � o      �K�K 0 eachcharnum eachCharNum� ��� Z   " �����J� =   " %��� o   " #�I�I 0 eachcharnum eachCharNum� m   # $�H�H  � r   ( +��� m   ( )�� ���  +� o      �G�G 0 usechar useChar� ��� F   . � � F   . k F   . Y F   . I F   . 9 l  . 1	�F�E	 >   . 1

 o   . /�D�D 0 eachcharnum eachCharNum m   / 0�C�C *�F  �E   l  4 7�B�A >   4 7 o   4 5�@�@ 0 eachcharnum eachCharNum m   5 6�?�? _�B  �A   l  < G�>�= G   < G A   < ? o   < =�<�< 0 eachcharnum eachCharNum m   = >�;�; - ?   B E o   B C�:�: 0 eachcharnum eachCharNum m   C D�9�9 .�>  �=   l  L W�8�7 G   L W A   L O o   L M�6�6 0 eachcharnum eachCharNum m   M N�5�5 0 ?   R U o   R S�4�4 0 eachcharnum eachCharNum m   S T�3�3 9�8  �7   l  \ i�2�1 G   \ i A   \ _ !  o   \ ]�0�0 0 eachcharnum eachCharNum! m   ] ^�/�/ A ?   b g"#" o   b c�.�. 0 eachcharnum eachCharNum# m   c f�-�- Z�2  �1    l  n }$�,�+$ G   n }%&% A   n s'(' o   n o�*�* 0 eachcharnum eachCharNum( m   o r�)�) a& ?   v {)*) o   v w�(�( 0 eachcharnum eachCharNum* m   w z�'�' z�,  �+  � +�&+ k   � �,, -.- r   � �/0/ I  � ��%12
�% .sysorondlong        doub1 l  � �3�$�#3 ^   � �454 o   � ��"�" 0 eachcharnum eachCharNum5 m   � ��!�! �$  �#  2 � 6�
�  
dire6 m   � ��
� olierndD�  0 o      �� 0 firstdig firstDig. 787 r   � �9:9 `   � �;<; o   � ��� 0 eachcharnum eachCharNum< m   � ��� : o      �� 0 	seconddig 	secondDig8 =>= Z   � �?@��? ?   � �ABA o   � ��� 0 firstdig firstDigB m   � ��� 	@ k   � �CC DED r   � �FGF [   � �HIH o   � ��� 0 firstdig firstDigI m   � ��� 7G o      �� 0 anum aNumE J�J r   � �KLK I  � ��M�
� .sysontocTEXT       shorM o   � ��� 0 anum aNum�  L o      �� 0 firstdig firstDig�  �  �  > NON Z   � �PQ��P ?   � �RSR o   � ��� 0 	seconddig 	secondDigS m   � ��
�
 	Q k   � �TT UVU r   � �WXW [   � �YZY o   � ��	�	 0 	seconddig 	secondDigZ m   � ��� 7X o      �� 0 anum aNumV [�[ r   � �\]\ I  � ��^�
� .sysontocTEXT       shor^ o   � ��� 0 anum aNum�  ] o      �� 0 	seconddig 	secondDig�  �  �  O _`_ r   � �aba c   � �cdc l  � �e�� e b   � �fgf b   � �hih m   � �jj �kk  %i l  � �l����l c   � �mnm o   � ����� 0 firstdig firstDign m   � ���
�� 
TEXT��  ��  g l  � �o����o c   � �pqp o   � ����� 0 	seconddig 	secondDigq m   � ���
�� 
TEXT��  ��  �  �   d m   � ���
�� 
TEXTb o      ���� 0 numhex numHex` r��r r   � �sts o   � ����� 0 numhex numHext o      ���� 0 usechar useChar��  �&  �J  � u��u r   � �vwv c   � �xyx b   � �z{z o   � ����� 0 
thetextenc 
theTextEnc{ o   � ����� 0 usechar useChary m   � ���
�� 
TEXTw o      ���� 0 
thetextenc 
theTextEnc��  �Q 0 eachchar eachChar� n    
|}| 2   
��
�� 
cha } o    ���� 0 thetext theText� ~��~ L   o  ���� 0 
thetextenc 
theTextEnc��  � ��� i     ��� I      ������� 0 write_error_log  � ���� o      ���� 0 
this_error  ��  ��  � k     M�� ��� r     ��� b     	��� l    ������ c     ��� l    ������ I    �����
�� .earsffdralis        afdr� m     ��
�� afdrdesk��  ��  ��  � m    ��
�� 
ctxt��  ��  � m    �� ��� ( S c r i p t   E r r o r   L o g . t x t� l     ������ o      ���� 0 	error_log  ��  ��  � ���� Q    M���� k    1�� ��� I   ����
�� .rdwropenshor       file� 4    ���
�� 
file� l   ������ o    ���� 0 	error_log  ��  ��  � �����
�� 
perm� m    ��
�� boovtrue��  � ��� I   (����
�� .rdwrwritnull���     ****� l   ������ b    ��� o    ���� 0 
this_error  � o    ��
�� 
ret ��  ��  � ����
�� 
refn� 4    "���
�� 
file� l    !������ o     !���� 0 	error_log  ��  ��  � �����
�� 
wrat� m   # $��
�� rdwreof ��  � ���� I  ) 1�����
�� .rdwrclosnull���     ****� 4   ) -���
�� 
file� l  + ,������ o   + ,���� 0 	error_log  ��  ��  ��  ��  � R      ������
�� .ascrerr ****      � ****��  ��  � Q   9 M����� I  < D�����
�� .rdwrclosnull���     ****� 4   < @���
�� 
file� l  > ?������ o   > ?���� 0 	error_log  ��  ��  ��  � R      ������
�� .ascrerr ****      � ****��  ��  ��  ��  � ��� l     ��������  ��  ��  � ���� l     ��������  ��  ��  ��       ��������������� �������  � ������������������������  0 showquickentry showQuickEntry�� 80 bringomnifocustoforeground bringOmnifocusToForeground�� (0 attachmailtooftask attachMailToOFTask�� (0 focusspecificfield focusSpecificField�� 60 deletemailafterprocessing deleteMailAfterProcessing�� $0 movemailtofolder moveMailToFolder�� ,0 targetmailfoldername targetMailFolderName��  0 findandreplace findAndReplace�� 0 	urlencode  �� 0 write_error_log  
�� .aevtoappnull  �   � ****�� ��  �� �� ��  ��  � �������������  0 findandreplace findAndReplace�� ����� �  �������� 
0 tofind  �� 0 	toreplace  �� 0 	thestring 	TheString��  � �������������� 
0 tofind  �� 0 	toreplace  �� 0 	thestring 	TheString�� 0 ditd  �� 0 res  �� 0 tis  � ������������
�� 
txdl
�� 
msng
�� 
citm
�� 
kocl
�� 
cobj
�� .corecnte****       ****�� D*�,E�O�E�O�*�,FO )��-[��l kh ��  �E�Y 	��%�%E�[OY��O�*�,FO�� ������������� 0 	urlencode  �� ��� �  �~�~ 0 thetext theText��  � 	�}�|�{�z�y�x�w�v�u�} 0 thetext theText�| 0 
thetextenc 
theTextEnc�{ 0 eachchar eachChar�z 0 usechar useChar�y 0 eachcharnum eachCharNum�x 0 firstdig firstDig�w 0 	seconddig 	secondDig�v 0 anum aNum�u 0 numhex numHex� ��t�s�r�q�p�o��n�m�l�k�j�i�h�g�f�e�d�c�b�a�`�_�^�]j�\
�t 
cha 
�s 
kocl
�r 
cobj
�q .corecnte****       ****
�p .sysoctonshor       TEXT�o  �n *�m _
�l 
bool�k -�j .�i 0�h 9�g A�f Z�e a�d z�c 
�b 
dire
�a olierndD
�` .sysorondlong        doub�_ 	�^ 7
�] .sysontocTEXT       shor
�\ 
TEXT���E�O ���-[��l kh �E�O�j E�O��  �E�Y Ť�	 ���&	 ��
 ���&�&	 ��
 ���&�&	 ��
 	�a �&�&	 �a 
 	�a �&�& p�a !a a l E�O�a #E�O�a  �a E�O�j E�Y hO�a  �a E�O�j E�Y hOa �a &%�a &%a &E�O�E�Y hO��%a &E�[OY�O�� �[��Z�Y���X�[ 0 write_error_log  �Z �W��W �  �V�V 0 
this_error  �Y  � �U�T�U 0 
this_error  �T 0 	error_log  � �S�R�Q��P�O�N�M�L�K�J�I�H�G�F�E
�S afdrdesk
�R .earsffdralis        afdr
�Q 
ctxt
�P 
file
�O 
perm
�N .rdwropenshor       file
�M 
ret 
�L 
refn
�K 
wrat
�J rdwreof �I 
�H .rdwrwritnull���     ****
�G .rdwrclosnull���     ****�F  �E  �X N�j �&�%E�O '*�/�el O��%�*�/��� O*�/j W X   *�/j W X  h� �D��C�B���A
�D .aevtoappnull  �   � ****� k    ��  ��� i�@�@  �C  �B  � �?�>�=�? 0 
themessage 
theMessage�> 0 error_message  �= 0 error_number  � Wc�<�; ��:�9�8�7�6�5�4�3 ��2�1�0�/�.�-�,�+�*�)�(�'�&�%�$�#;=?�"A�!� ���xz�����������������������
�	��������� ��������p������
�< 
CMgs�; $0 selectedmessages selectedMessages
�: 
disp
�9 .sysodlogaskr        TEXT
�8 
kocl
�7 
cobj
�6 .corecnte****       ****
�5 
subj�4 0 thename theName
�3 
msng
�2 
ctnt�1 0 
thecontent 
theContent
�0 
ID  
�/ 
TEXT�. 0 theid theID
�- 
sndr�, 0 	thesender 	theSender�+ $0 thesenderaddress theSenderAddress�* 0 thesendername theSenderName
�) 
pnam�(  �'  
�& 
radd
�% 
tims�$ 0 msgtime msgTime
�# 
lnfd
�" 
ret �! "0 omnifocusheader OmniFocusHeader
�  afdrcusr
� 
rtyp
� .earsffdralis        afdr
� 
psxp� 0 thefilename theFileName
� .ascrcmnt****      � ****
� 
kfil
� .coresavenull���     obj 
� 
strq
� .sysoexecTEXT���     TEXT� 0 mytxtcontent myTxtContent� 0 thetxtcontent theTxtContent
� 
FCDo� 0 thedoc theDoc� 0 thetask theTask� 0 thenote theNote
� 
FCQE
� 
FCit
� 
prdt
� 
FCno� 
� .corecrel****      � null�
 0 newtask NewTask
�	 
psxf� 0 theattachment theAttachment
� 
OSfA
� 
atfn
� 
OSin
� .miscactvnull��� ��� null
� .aevtodocnull  �    alis
� 
tab 
� .prcskprsnull���     ctxt
�  
docu
�� .coredelonull���     obj 
�� 
insh
�� 
cFld
�� .coremovenull���     obj �� 0 error_message  � ������
�� 
errn�� 0 error_number  ��  �A��*�,E�O�jv  ��kl OhY hO��[��l kh  ��,E�O��  �E�Y hO��,E�O��,a &E` O�a ,E` Oa E` Oa E` O _ a ,E` W X  hO _ a ,E` W X  hO�a ,E` O_ _ %a %_ %a  %_ %a !%_ "%a #%_ %_ "%_ "%E` $Oa %a &a l 'a (,a )%_ %a *%E` +Ob  k  #a , a -_ +%j .UO�a /_ +l 0Y hOa 1�a 2,%a 3%j 4E` 5O_ $_ %_ %_ 5%E` 6Oa ,<*a 7,E` 8O�E` 9O_ 6E` :Ob   k  �*a ;, �*�a <a =a _ 9a >_ 6a ?a ? @E` AOb  k  >) *a B_ +/E` CUO_ Aa >, *�a Da =a E_ Ca Fea ?a ? @UY hOb  k  
*j GY hO*j HOa I  b  kh_ Jj K[OY��UUY ka , d*a Lk/ Z*�a <a =a _ 9a >_ 6a ?a ? @E` AOb  k  ,_ Aa >, *�a Da =a E_ +a Fea ?a ? @UY hUUUOb  k  
�j MY hOb  k  �a N*a Ob  /l PY hOP[OY�[UO a Qj 4W !X R Sa , a T�%a U%�%a V%j .U ascr  ��ޭ
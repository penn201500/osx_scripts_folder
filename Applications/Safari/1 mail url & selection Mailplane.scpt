FasdUAS 1.101.10   ��   ��    k             l     ��  ��      FORMAT: "07/13/97"     � 	 	 &   F O R M A T :   " 0 7 / 1 3 / 9 7 "   
  
 l     ����  r         m        �    /  o      ���� 0 the_delim_char  ��  ��        l    ����  r        l   	 ����  I   	������
�� .misccurdldt    ��� null��  ��  ��  ��    o      ���� 0 the_current_date  ��  ��        l    ����  r        n        1    ��
�� 
day   o    ���� 0 the_current_date    o      ���� 0 the_current_day  ��  ��        l   #  ����   Z   # ! "���� ! A     # $ # o    ���� 0 the_current_day   $ m    ���� 
 " l 	   %���� % r     & ' & c     ( ) ( l    *���� * b     + , + m     - - � . .  0 , o    ���� 0 the_current_day  ��  ��   ) m    ��
�� 
TEXT ' o      ���� 0 the_current_day  ��  ��  ��  ��  ��  ��     / 0 / l  $ ) 1���� 1 r   $ ) 2 3 2 n   $ ' 4 5 4 m   % '��
�� 
mnth 5 o   $ %���� 0 the_current_date   3 o      ���� 0 the_current_month  ��  ��   0  6 7 6 l  * 1 8���� 8 r   * 1 9 : 9 c   * / ; < ; n   * - = > = 1   + -��
�� 
year > o   * +���� 0 the_current_date   < m   - .��
�� 
ctxt : o      ���� 0 the_current_year  ��  ��   7  ? @ ? l  2 A A���� A r   2 A B C B c   2 ? D E D n   2 = F G F 7  3 =�� H I
�� 
cha  H m   7 9������ I m   : <������ G o   2 3���� 0 the_current_year   E m   = >��
�� 
TEXT C o      ���� 0 the_current_year  ��  ��   @  J K J l  B n L���� L r   B n M N M J   B j O O  P Q P m   B E��
�� 
jan  Q  R S R m   E H��
�� 
feb  S  T U T m   H K��
�� 
mar  U  V W V m   K N��
�� 
apr  W  X Y X m   N Q��
�� 
may  Y  Z [ Z m   Q T��
�� 
jun  [  \ ] \ m   T W��
�� 
jul  ]  ^ _ ^ m   W Z��
�� 
aug  _  ` a ` m   Z ]��
�� 
sep  a  b c b m   ] `��
�� 
oct  c  d e d m   ` c��
�� 
nov  e  f�� f m   c f��
�� 
dec ��   N o      ���� 0 the_list_of_months  ��  ��   K  g h g l  o � i���� i Y   o � j�� k l�� j Z   { � m n���� m =  { � o p o n   { � q r q 4   ~ ��� s
�� 
cobj s o   � ����� 0 i   r o   { ~���� 0 the_list_of_months   p o   � ����� 0 the_current_month   n k   � � t t  u v u r   � � w x w o   � ����� 0 i   x o      ���� 0 the_numeric_month   v  y�� y  S   � ���  ��  ��  �� 0 i   k m   r s����  l m   s v���� ��  ��  ��   h  z { z l  � � |���� | Z  � � } ~���� } A   � �  �  o   � ����� 0 the_numeric_month   � m   � ����� 
 ~ r   � � � � � c   � � � � � l  � � ����� � b   � � � � � m   � � � � � � �  0 � o   � ����� 0 the_numeric_month  ��  ��   � m   � ���
�� 
TEXT � o      ���� 0 the_numeric_month  ��  ��  ��  ��   {  � � � l  � � ����� � r   � � � � � c   � � � � � l  � � ����� � b   � � � � � b   � � � � � b   � � � � � b   � � � � � o   � ����� 0 the_numeric_month   � o   � ����� 0 the_delim_char   � o   � ����� 0 the_current_day   � o   � ����� 0 the_delim_char   � o   � ����� 0 the_current_year  ��  ��   � m   � ���
�� 
ctxt � o      ���� 0 the_date_slug  ��  ��   �  � � � l     ��������  ��  ��   �  � � � l  � � ����� � r   � � � � � m   � � � � � � �   � o      ���� 0 
gemailbody 
gEmailBody��  ��   �  � � � l  � � ����� � r   � � � � � m   � � � � � � �   � o      ���� 0 gsubject gSubject��  ��   �  � � � l     ��������  ��  ��   �  � � � l      �� � ���   ���tell application "Safari"
	global the_date_slug
	global gEmailBody
	
	�event WWW!ACTV�
	
	-- must put a try here because ListWindows throws an error if there are no open windows
	try
		set theList to �event WWW!LSTW�
	on error the_error_message number the_error_number
		set the_complete_error_message to "Error: " & the_error_number & ". " & the_error_message
		beep
		display dialog the_complete_error_message buttons {"OK"} default button 1
		return the_complete_error_message
	end try
	
	set topWindow to (�event WWW!WNFO� item 1 of theList)
	set pageName to item 2 of the topWindow
	set pageURL to item 1 of the topWindow
	
	set gEmailBody to "<" & pageURL & "> (" & pageName & ") seen on " & the_date_slug & return
	set gSubject to pageName
	
end tell    � � � �� t e l l   a p p l i c a t i o n   " S a f a r i " 
 	 g l o b a l   t h e _ d a t e _ s l u g 
 	 g l o b a l   g E m a i l B o d y 
 	 
 	 � e v e n t   W W W ! A C T V � 
 	 
 	 - -   m u s t   p u t   a   t r y   h e r e   b e c a u s e   L i s t W i n d o w s   t h r o w s   a n   e r r o r   i f   t h e r e   a r e   n o   o p e n   w i n d o w s 
 	 t r y 
 	 	 s e t   t h e L i s t   t o   � e v e n t   W W W ! L S T W � 
 	 o n   e r r o r   t h e _ e r r o r _ m e s s a g e   n u m b e r   t h e _ e r r o r _ n u m b e r 
 	 	 s e t   t h e _ c o m p l e t e _ e r r o r _ m e s s a g e   t o   " E r r o r :   "   &   t h e _ e r r o r _ n u m b e r   &   " .   "   &   t h e _ e r r o r _ m e s s a g e 
 	 	 b e e p 
 	 	 d i s p l a y   d i a l o g   t h e _ c o m p l e t e _ e r r o r _ m e s s a g e   b u t t o n s   { " O K " }   d e f a u l t   b u t t o n   1 
 	 	 r e t u r n   t h e _ c o m p l e t e _ e r r o r _ m e s s a g e 
 	 e n d   t r y 
 	 
 	 s e t   t o p W i n d o w   t o   ( � e v e n t   W W W ! W N F O �   i t e m   1   o f   t h e L i s t ) 
 	 s e t   p a g e N a m e   t o   i t e m   2   o f   t h e   t o p W i n d o w 
 	 s e t   p a g e U R L   t o   i t e m   1   o f   t h e   t o p W i n d o w 
 	 
 	 s e t   g E m a i l B o d y   t o   " < "   &   p a g e U R L   &   " >   ( "   &   p a g e N a m e   &   " )   s e e n   o n   "   &   t h e _ d a t e _ s l u g   &   r e t u r n 
 	 s e t   g S u b j e c t   t o   p a g e N a m e 
 	 
 e n d   t e l l �  � � � l     ��������  ��  ��   �  � � � l  � � ����� � r   � � � � � m   � � � � � � �   � o      ���� 0 
thecontent 
theContent��  ��   �  � � � l     ��������  ��  ��   �  � � � l  �w ����� � O   �w � � � k   �v � �  � � � r   � � � � � N   � � � � 4  � ��� �
�� 
cwin � m   � ���  � o      �~�~ 0 w   �  � � � r   � � � � � n   � � � � � 1   � ��}
�} 
pnam � o   � ��|�| 0 w   � o      �{�{ 0 
thesubject 
theSubject �  � � � l  � ��z�y�x�z  �y  �x   �  � � � l  � ��w � ��w   � $  whoops.  forgot the base case    � � � � <   w h o o p s .     f o r g o t   t h e   b a s e   c a s e �  � � � r   � � � � m   � � � � � � �   � o      �v�v 0 
thecontent 
theContent �  � � � l �u�t�s�u  �t  �s   �  � � � l �r � ��r   � 4 . try to get the clipboard.  Ignore any errors.    � � � � \   t r y   t o   g e t   t h e   c l i p b o a r d .     I g n o r e   a n y   e r r o r s . �  � � � Q   � ��q � r   � � � I �p�o�n
�p .JonsgClp****    ��� null�o  �n   � o      �m�m 0 
thecontent 
theContent � R      �l�k�j
�l .ascrerr ****      � ****�k  �j  �q   �  � � � r  ( � � � n  $ � � � 1   $�i
�i 
pURL � n    � � � m   �h
�h 
docu � o  �g�g 0 w   � o      �f�f 0 theurl theURL �  � � � l ))�e�d�c�e  �d  �c   �  � � � r  )7 � � � l )3 ��b�a � n  )3 � � � 1  /3�`
�` 
pURL � 4  )/�_ �
�_ 
docu � m  -.�^�^ �b  �a   � o      �]�] 0 this_url this_URL �  � � � r  8L � � � l 8H ��\�[ � I 8H�Z � 
�Z .sfridojs****       utxt � m  8; �  d o c u m e n t . t i t l e  �Y�X
�Y 
dcnm 4  >D�W
�W 
docu m  BC�V�V �X  �\  �[   � o      �U�U 0 
this_title   �  l MM�T�S�R�T  �S  �R    r  MT	
	 o  MP�Q�Q 0 
this_title  
 o      �P�P 0 gsubject gSubject  l UU�O�N�M�O  �N  �M    r  Ut b  Up b  Ul b  Uh b  Ud b  U` b  U\ o  UX�L�L 0 
this_title   m  X[ �      < o  \_�K�K 0 theurl theURL m  `c �    >   o  dg�J
�J 
ret  o  hk�I
�I 
ret  o  lo�H�H 0 
thecontent 
theContent o      �G�G 0 
gemailbody 
gEmailBody !�F! l uu�E"#�E  " � �	set gEmailBody to this_title & return & "<" & theURL & "> " & return & " seen on " & the_date_slug & return & return & theContent   # �$$ 	 s e t   g E m a i l B o d y   t o   t h i s _ t i t l e   &   r e t u r n   &   " < "   &   t h e U R L   &   " >   "   &   r e t u r n   &   "   s e e n   o n   "   &   t h e _ d a t e _ s l u g   &   r e t u r n   &   r e t u r n   &   t h e C o n t e n t�F   � m   � �%%�                                                                                  sfri  alis    N  Macintosh HD               ���VH+   	eN
Safari.app                                                      	���_        ����  	                Applications    ��*�      �y�     	eN  %Macintosh HD:Applications: Safari.app    
 S a f a r i . a p p    M a c i n t o s h   H D  Applications/Safari.app   / ��  ��  ��   � &'& l     �D�C�B�D  �C  �B  ' ()( l x�*�A�@* O  x�+,+ k  ~�-- ./. p  ~~00 �?�>�? 0 
gemailbody 
gEmailBody�>  / 121 p  ~~33 �=�<�= 0 gsubject gSubject�<  2 454 l ~~�;�:�9�;  �:  �9  5 676 I ~��88�7
�8 .ascrcmnt****      � ****8 o  ~��6�6 0 gsubject gSubject�7  7 9:9 I ���5;�4
�5 .ascrcmnt****      � ****; o  ���3�3 0 
gemailbody 
gEmailBody�4  : <=< l ���2�1�0�2  �1  �0  = >?> r  ��@A@ I ���/�.B
�/ .corecrel****      � null�.  B �-CD
�- 
koclC m  ���,
�, 
bckeD �+E�*
�+ 
prdtE K  ��FF �)GH
�) 
mpseG m  ���(
�( boovfalsH �'IJ
�' 
subjI o  ���&�& 0 gsubject gSubjectJ �%K�$
�% 
ctntK o  ���#�# 0 
gemailbody 
gEmailBody�$  �*  A o      �"�" 0 m  ? L�!L I ��� M�
�  .maplcompnull���     bckeM o  ���� 0 m  �  �!  , m  x{NN�                                                                                  MaPl  alis    `  Macintosh HD               ���VH+   	eNMailplane 3.app                                                 a��U:�        ����  	                Applications    ��*�      �U�%     	eN  *Macintosh HD:Applications: Mailplane 3.app     M a i l p l a n e   3 . a p p    M a c i n t o s h   H D  Applications/Mailplane 3.app  / ��  �A  �@  ) OPO l     ����  �  �  P Q�Q l      �RS�  RWQ
http://groups.google.com/group/mailplaneapp/browse_thread/thread/3e5611a59188909e/ed1a7932f77edce6?lnk=gst&q=appleScript+compose#ed1a7932f77edce6
tell application "Mailplane"	set m to make new outgoing message with properties {directlySend:false}	tell m to set sender to "abc...@gmail.com" (*THIS LINE is broken*)	compose mend tell
   S �TT� 
 h t t p : / / g r o u p s . g o o g l e . c o m / g r o u p / m a i l p l a n e a p p / b r o w s e _ t h r e a d / t h r e a d / 3 e 5 6 1 1 a 5 9 1 8 8 9 0 9 e / e d 1 a 7 9 3 2 f 7 7 e d c e 6 ? l n k = g s t & q = a p p l e S c r i p t + c o m p o s e # e d 1 a 7 9 3 2 f 7 7 e d c e 6 
 t e l l   a p p l i c a t i o n   " M a i l p l a n e "  	 s e t   m   t o   m a k e   n e w   o u t g o i n g   m e s s a g e   w i t h   p r o p e r t i e s   { d i r e c t l y S e n d : f a l s e }  	 t e l l   m   t o   s e t   s e n d e r   t o   " a b c . . . @ g m a i l . c o m "   ( * T H I S   L I N E   i s   b r o k e n * )  	 c o m p o s e   m  e n d   t e l l 
�       �UV�  U �
� .aevtoappnull  �   � ****V �W��XY�
� .aevtoappnull  �   � ****W k    �ZZ  
[[  \\  ]]  ^^  /__  6``  ?aa  Jbb  gcc  zdd  �ee  �ff  �gg  �hh  �ii (��  �  �  X �� 0 i  Y I ������ -�
�	��������� �������������������������� ��� ��� ��� ���%�������� �����������������������N������������������������� 0 the_delim_char  
� .misccurdldt    ��� null� 0 the_current_date  
� 
day � 0 the_current_day  � 

�
 
TEXT
�	 
mnth� 0 the_current_month  
� 
year
� 
ctxt� 0 the_current_year  
� 
cha ���
� 
jan 
� 
feb 
�  
mar 
�� 
apr 
�� 
may 
�� 
jun 
�� 
jul 
�� 
aug 
�� 
sep 
�� 
oct 
�� 
nov 
�� 
dec �� �� 0 the_list_of_months  
�� 
cobj�� 0 the_numeric_month  �� 0 the_date_slug  �� 0 
gemailbody 
gEmailBody�� 0 gsubject gSubject�� 0 
thecontent 
theContent
�� 
cwin�� 0 w  
�� 
pnam�� 0 
thesubject 
theSubject
�� .JonsgClp****    ��� null��  ��  
�� 
docu
�� 
pURL�� 0 theurl theURL�� 0 this_url this_URL
�� 
dcnm
�� .sfridojs****       utxt�� 0 
this_title  
�� 
ret 
�� .ascrcmnt****      � ****
�� 
kocl
�� 
bcke
�� 
prdt
�� 
mpse
�� 
subj
�� 
ctnt�� �� 
�� .corecrel****      � null�� 0 m  
�� .maplcompnull���     bcke���E�O*j E�O��,E�O�� ��%�&E�Y hO��,E�O��,�&E�O�[�\[Z�\Zi2�&E�Oa a a a a a a a a a a a a vE` O (ka kh  _ a �/�  �E` OY h[OY��O_ � a  _ %�&E` Y hO_ �%�%�%�%�&E` !Oa "E` #Oa $E` %Oa &E` 'Oa ( �*a )k/E` *O_ *a +,E` ,Oa -E` 'O *j .E` 'W X / 0hO_ *a 1,a 2,E` 3O*a 1k/a 2,E` 4Oa 5a 6*a 1k/l 7E` 8O_ 8E` %O_ 8a 9%_ 3%a :%_ ;%_ ;%_ '%E` #OPUOa < B_ %j =O_ #j =O*a >a ?a @a Afa B_ %a C_ #a Da E FE` GO_ Gj HUascr  ��ޭ
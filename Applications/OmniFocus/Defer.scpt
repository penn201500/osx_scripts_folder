FasdUAS 1.101.10   ��   ��    k             l      ��  ��   ��
	# DESCRIPTION #
	
	This script takes the currently selected actions or projects and offsets their dates by the
	user-specified number of days. The user may defer just the due date or both the start and
	due dates (useful for skipping weekends for daily recurring tasks).
	
	
	# LICENSE #

	Copyright � 2008-2011 Dan Byler (contact: dbyler@gmail.com)
	Licensed under MIT License (http://www.opensource.org/licenses/mit-license.php)
	(TL;DR: no warranty, do whatever you want with it.)

	
	# CHANGE HISTORY#
	
	0.7 (2011-10-31)
	-	Now has "Start Only" mode that only modifies start dates. To use, set promptForChangeScope to false
		and changeScope to "Start Only"
	-	Updated Growl code to work with Growl 1.3 (App Store version)
	-	Updated tell syntax to call "first document window", not "front document window"
	
	0.6 (2011-08-30)
	-	Rewrote notification code to gracefully handle situations where Growl is not installed
	-	Changed default promptForChangeScope to False
	
	0.5 (2011-07-14)
	-	Now warns for mismatches between "actual" and "effective" Start and Due dates. Such mismatches 
		occur if a parent or ancestor item has an earlier Due date (or later Start date) than the selected item.
		This warning can be suppressed by setting "warnOnDateMismatch" property to "false".

	-	New "promptForChangeScope" setting lets users bypass the second dialog box if they always change
		the same parameters (Start AND Due dates, or just Due dates). Default setting: enabled.
	
	0.4 (2011-07-07)
	-	New option to set start time (Default: 8am)
	-	New snoozeUnscheduledItems option (default: True) lets you push the start date of unscheduled items.
	-	No longer fails when a Grouping divider is selected
	-	Reorganized; incorporated Rob Trew's method to get items from OmniFocus
	-	Fixes potential issue when launching from OmniFocus toolbar
	
	0.3c (2010-06-21)
		-	Actual fix for autosave
	
	0.3b (2010-06-21)
		-	Encapsulated autosave in "try" statements in case this fails
	
	0.3 (2010-06-15)
		-	Incorporated another improvement from Curt Clifton to increase performance
		-	Reinstated original Growl code since the Growl-agnostic code broke in Snow Leopard
	
	0.2
		-	Incorporated Curt Clifton's bug fixes to make script more reliable when dealing with multiple items.
			Thanks, Curt!
		-	Added some error suppression to deal with deferring from Context mode
		-	Defers both start and due dates by default.
		-	Incorporates new method that doesn't call Growl directly. This code should be friendly for machines
			that don't have Growl installed. In my testing, I found that GrowlHelperApp crashes on nearly 10%
			of AppleScript calls, so the script checks for GrowlHelperApp and launches it if not running. (Thanks 
			to Nanovivid from forums.cocoaforge.com/viewtopic.php?p=32584 and Macfaninpdx from 
			forums.macrumors.com/showthread.php?t=423718 for the information needed to get this working
		-	All that said... if you run from the toolbar frequently, I'd recommend  turning alerts off since Growl 
			slows down the script so much
		
	0.1: Original release


	# INSTALLATION #

	-	Copy to ~/Library/Scripts/Applications/Omnifocus
 	-	If desired, add to the OmniFocus toolbar using View > Customize Toolbar... within OmniFocus


	# KNOWN ISSUES #
	-	When the script is invoked from the OmniFocus toolbar and canceled, OmniFocus displays an alert.
		This does not occur when invoked from another launcher (script menu, FastScripts LaunchBar, etc).

     � 	 	 
 	 #   D E S C R I P T I O N   # 
 	 
 	 T h i s   s c r i p t   t a k e s   t h e   c u r r e n t l y   s e l e c t e d   a c t i o n s   o r   p r o j e c t s   a n d   o f f s e t s   t h e i r   d a t e s   b y   t h e 
 	 u s e r - s p e c i f i e d   n u m b e r   o f   d a y s .   T h e   u s e r   m a y   d e f e r   j u s t   t h e   d u e   d a t e   o r   b o t h   t h e   s t a r t   a n d 
 	 d u e   d a t e s   ( u s e f u l   f o r   s k i p p i n g   w e e k e n d s   f o r   d a i l y   r e c u r r i n g   t a s k s ) . 
 	 
 	 
 	 #   L I C E N S E   # 
 
 	 C o p y r i g h t   �   2 0 0 8 - 2 0 1 1   D a n   B y l e r   ( c o n t a c t :   d b y l e r @ g m a i l . c o m ) 
 	 L i c e n s e d   u n d e r   M I T   L i c e n s e   ( h t t p : / / w w w . o p e n s o u r c e . o r g / l i c e n s e s / m i t - l i c e n s e . p h p ) 
 	 ( T L ; D R :   n o   w a r r a n t y ,   d o   w h a t e v e r   y o u   w a n t   w i t h   i t . ) 
 
 	 
 	 #   C H A N G E   H I S T O R Y # 
 	 
 	 0 . 7   ( 2 0 1 1 - 1 0 - 3 1 ) 
 	 - 	 N o w   h a s   " S t a r t   O n l y "   m o d e   t h a t   o n l y   m o d i f i e s   s t a r t   d a t e s .   T o   u s e ,   s e t   p r o m p t F o r C h a n g e S c o p e   t o   f a l s e 
 	 	 a n d   c h a n g e S c o p e   t o   " S t a r t   O n l y " 
 	 - 	 U p d a t e d   G r o w l   c o d e   t o   w o r k   w i t h   G r o w l   1 . 3   ( A p p   S t o r e   v e r s i o n ) 
 	 - 	 U p d a t e d   t e l l   s y n t a x   t o   c a l l   " f i r s t   d o c u m e n t   w i n d o w " ,   n o t   " f r o n t   d o c u m e n t   w i n d o w " 
 	 
 	 0 . 6   ( 2 0 1 1 - 0 8 - 3 0 ) 
 	 - 	 R e w r o t e   n o t i f i c a t i o n   c o d e   t o   g r a c e f u l l y   h a n d l e   s i t u a t i o n s   w h e r e   G r o w l   i s   n o t   i n s t a l l e d 
 	 - 	 C h a n g e d   d e f a u l t   p r o m p t F o r C h a n g e S c o p e   t o   F a l s e 
 	 
 	 0 . 5   ( 2 0 1 1 - 0 7 - 1 4 ) 
 	 - 	 N o w   w a r n s   f o r   m i s m a t c h e s   b e t w e e n   " a c t u a l "   a n d   " e f f e c t i v e "   S t a r t   a n d   D u e   d a t e s .   S u c h   m i s m a t c h e s   
 	 	 o c c u r   i f   a   p a r e n t   o r   a n c e s t o r   i t e m   h a s   a n   e a r l i e r   D u e   d a t e   ( o r   l a t e r   S t a r t   d a t e )   t h a n   t h e   s e l e c t e d   i t e m . 
 	 	 T h i s   w a r n i n g   c a n   b e   s u p p r e s s e d   b y   s e t t i n g   " w a r n O n D a t e M i s m a t c h "   p r o p e r t y   t o   " f a l s e " . 
 
 	 - 	 N e w   " p r o m p t F o r C h a n g e S c o p e "   s e t t i n g   l e t s   u s e r s   b y p a s s   t h e   s e c o n d   d i a l o g   b o x   i f   t h e y   a l w a y s   c h a n g e 
 	 	 t h e   s a m e   p a r a m e t e r s   ( S t a r t   A N D   D u e   d a t e s ,   o r   j u s t   D u e   d a t e s ) .   D e f a u l t   s e t t i n g :   e n a b l e d . 
 	 
 	 0 . 4   ( 2 0 1 1 - 0 7 - 0 7 ) 
 	 - 	 N e w   o p t i o n   t o   s e t   s t a r t   t i m e   ( D e f a u l t :   8 a m ) 
 	 - 	 N e w   s n o o z e U n s c h e d u l e d I t e m s   o p t i o n   ( d e f a u l t :   T r u e )   l e t s   y o u   p u s h   t h e   s t a r t   d a t e   o f   u n s c h e d u l e d   i t e m s . 
 	 - 	 N o   l o n g e r   f a i l s   w h e n   a   G r o u p i n g   d i v i d e r   i s   s e l e c t e d 
 	 - 	 R e o r g a n i z e d ;   i n c o r p o r a t e d   R o b   T r e w ' s   m e t h o d   t o   g e t   i t e m s   f r o m   O m n i F o c u s 
 	 - 	 F i x e s   p o t e n t i a l   i s s u e   w h e n   l a u n c h i n g   f r o m   O m n i F o c u s   t o o l b a r 
 	 
 	 0 . 3 c   ( 2 0 1 0 - 0 6 - 2 1 ) 
 	 	 - 	 A c t u a l   f i x   f o r   a u t o s a v e 
 	 
 	 0 . 3 b   ( 2 0 1 0 - 0 6 - 2 1 ) 
 	 	 - 	 E n c a p s u l a t e d   a u t o s a v e   i n   " t r y "   s t a t e m e n t s   i n   c a s e   t h i s   f a i l s 
 	 
 	 0 . 3   ( 2 0 1 0 - 0 6 - 1 5 ) 
 	 	 - 	 I n c o r p o r a t e d   a n o t h e r   i m p r o v e m e n t   f r o m   C u r t   C l i f t o n   t o   i n c r e a s e   p e r f o r m a n c e 
 	 	 - 	 R e i n s t a t e d   o r i g i n a l   G r o w l   c o d e   s i n c e   t h e   G r o w l - a g n o s t i c   c o d e   b r o k e   i n   S n o w   L e o p a r d 
 	 
 	 0 . 2 
 	 	 - 	 I n c o r p o r a t e d   C u r t   C l i f t o n ' s   b u g   f i x e s   t o   m a k e   s c r i p t   m o r e   r e l i a b l e   w h e n   d e a l i n g   w i t h   m u l t i p l e   i t e m s . 
 	 	 	 T h a n k s ,   C u r t ! 
 	 	 - 	 A d d e d   s o m e   e r r o r   s u p p r e s s i o n   t o   d e a l   w i t h   d e f e r r i n g   f r o m   C o n t e x t   m o d e 
 	 	 - 	 D e f e r s   b o t h   s t a r t   a n d   d u e   d a t e s   b y   d e f a u l t . 
 	 	 - 	 I n c o r p o r a t e s   n e w   m e t h o d   t h a t   d o e s n ' t   c a l l   G r o w l   d i r e c t l y .   T h i s   c o d e   s h o u l d   b e   f r i e n d l y   f o r   m a c h i n e s 
 	 	 	 t h a t   d o n ' t   h a v e   G r o w l   i n s t a l l e d .   I n   m y   t e s t i n g ,   I   f o u n d   t h a t   G r o w l H e l p e r A p p   c r a s h e s   o n   n e a r l y   1 0 % 
 	 	 	 o f   A p p l e S c r i p t   c a l l s ,   s o   t h e   s c r i p t   c h e c k s   f o r   G r o w l H e l p e r A p p   a n d   l a u n c h e s   i t   i f   n o t   r u n n i n g .   ( T h a n k s   
 	 	 	 t o   N a n o v i v i d   f r o m   f o r u m s . c o c o a f o r g e . c o m / v i e w t o p i c . p h p ? p = 3 2 5 8 4   a n d   M a c f a n i n p d x   f r o m   
 	 	 	 f o r u m s . m a c r u m o r s . c o m / s h o w t h r e a d . p h p ? t = 4 2 3 7 1 8   f o r   t h e   i n f o r m a t i o n   n e e d e d   t o   g e t   t h i s   w o r k i n g 
 	 	 - 	 A l l   t h a t   s a i d . . .   i f   y o u   r u n   f r o m   t h e   t o o l b a r   f r e q u e n t l y ,   I ' d   r e c o m m e n d     t u r n i n g   a l e r t s   o f f   s i n c e   G r o w l   
 	 	 	 s l o w s   d o w n   t h e   s c r i p t   s o   m u c h 
 	 	 
 	 0 . 1 :   O r i g i n a l   r e l e a s e 
 
 
 	 #   I N S T A L L A T I O N   # 
 
 	 - 	 C o p y   t o   ~ / L i b r a r y / S c r i p t s / A p p l i c a t i o n s / O m n i f o c u s 
   	 - 	 I f   d e s i r e d ,   a d d   t o   t h e   O m n i F o c u s   t o o l b a r   u s i n g   V i e w   >   C u s t o m i z e   T o o l b a r . . .   w i t h i n   O m n i F o c u s 
 
 
 	 #   K N O W N   I S S U E S   # 
 	 - 	 W h e n   t h e   s c r i p t   i s   i n v o k e d   f r o m   t h e   O m n i F o c u s   t o o l b a r   a n d   c a n c e l e d ,   O m n i F o c u s   d i s p l a y s   a n   a l e r t . 
 	 	 T h i s   d o e s   n o t   o c c u r   w h e n   i n v o k e d   f r o m   a n o t h e r   l a u n c h e r   ( s c r i p t   m e n u ,   F a s t S c r i p t s   L a u n c h B a r ,   e t c ) . 
 
   
  
 l     ��������  ��  ��        l     ��  ��    : 4 To change settings, modify the following properties     �   h   T o   c h a n g e   s e t t i n g s ,   m o d i f y   t h e   f o l l o w i n g   p r o p e r t i e s      l          j     �� �� 00 snoozeunscheduleditems snoozeUnscheduledItems  m     ��
�� boovtrue  g aif True, when deferring Start AND Due dates, will set start date to given # of days in the future     �   � i f   T r u e ,   w h e n   d e f e r r i n g   S t a r t   A N D   D u e   d a t e s ,   w i l l   s e t   s t a r t   d a t e   t o   g i v e n   #   o f   d a y s   i n   t h e   f u t u r e      l          j    �� �� 20 showsummarynotification showSummaryNotification  m    ��
�� boovtrue  1 +if true, will display success notifications     �   V i f   t r u e ,   w i l l   d i s p l a y   s u c c e s s   n o t i f i c a t i o n s       l      ! " # ! j    �� $�� 0 usegrowl useGrowl $ m    ��
�� boovtrue " 8 2if true, will use Growl for success/failure alerts    # � % % d i f   t r u e ,   w i l l   u s e   G r o w l   f o r   s u c c e s s / f a i l u r e   a l e r t s    & ' & l      ( ) * ( j   	 �� +�� 0 defaultoffset defaultOffset + m   	 
����  ) ( "number of days to defer by default    * � , , D n u m b e r   o f   d a y s   t o   d e f e r   b y   d e f a u l t '  - . - l      / 0 1 / j    �� 2�� $0 defaultstarttime defaultStartTime 2 m    ���� 	 0 1 +default time to use (in hours, 24-hr clock)    1 � 3 3 V d e f a u l t   t i m e   t o   u s e   ( i n   h o u r s ,   2 4 - h r   c l o c k ) .  4 5 4 l      6 7 8 6 j    �� 9�� (0 warnondatemismatch warnOnDateMismatch 9 m    ��
�� boovtrue 7 � �if True, warns you if there's a mismatch between a deferred item's actual and effective Due date. An effective due date is set by a parent task or project.    8 � : :6 i f   T r u e ,   w a r n s   y o u   i f   t h e r e ' s   a   m i s m a t c h   b e t w e e n   a   d e f e r r e d   i t e m ' s   a c t u a l   a n d   e f f e c t i v e   D u e   d a t e .   A n   e f f e c t i v e   d u e   d a t e   i s   s e t   b y   a   p a r e n t   t a s k   o r   p r o j e c t . 5  ; < ; l     ��������  ��  ��   <  = > = l     �� ? @��   ? � �If you always want to change the same type of information--(Start AND Due dates) OR (Just Due dates)--change promptForChangeScope to false    @ � A A I f   y o u   a l w a y s   w a n t   t o   c h a n g e   t h e   s a m e   t y p e   o f   i n f o r m a t i o n - - ( S t a r t   A N D   D u e   d a t e s )   O R   ( J u s t   D u e   d a t e s ) - - c h a n g e   p r o m p t F o r C h a n g e S c o p e   t o   f a l s e >  B C B j    �� D�� ,0 promptforchangescope promptForChangeScope D m    ��
�� boovfals C  E F E l      G H I G j    �� J�� 0 changescope changeScope J m     K K � L L  S t a r t   a n d   D u e H 8 2options: "Start and Due", "Due Only", "Start Only"    I � M M d o p t i o n s :   " S t a r t   a n d   D u e " ,   " D u e   O n l y " ,   " S t a r t   O n l y " F  N O N l     ��������  ��  ��   O  P Q P l     �� R S��   R   Don't change these    S � T T &   D o n ' t   c h a n g e   t h e s e Q  U V U j    �� W�� 0 alertitemnum alertItemNum W m     X X � Y Y   V  Z [ Z j    �� \�� 0 alertdaynum alertDayNum \ m     ] ] � ^ ^   [  _ ` _ j     �� a�� 0 growlappname growlAppName a m     b b � c c  D a n ' s   S c r i p t s `  d e d j   ! *�� f�� $0 allnotifications allNotifications f J   ! ) g g  h i h m   ! $ j j � k k  G e n e r a l i  l�� l m   $ ' m m � n n 
 E r r o r��   e  o p o j   + 4�� q�� ,0 enablednotifications enabledNotifications q J   + 3 r r  s t s m   + . u u � v v  G e n e r a l t  w�� w m   . 1 x x � y y 
 E r r o r��   p  z { z j   5 9�� |�� "0 iconapplication iconApplication | m   5 8 } } � ~ ~  O m n i F o c u s . a p p {   �  l     ��������  ��  ��   �  � � � i   : = � � � I      �������� 0 main  ��  ��   � k    � � �  � � � O    } � � � O   | � � � k   { � �  � � � l   �� � ���   �  Get selection    � � � �  G e t   s e l e c t i o n �  � � � r    . � � � n    , � � � 1   * ,��
�� 
valL � l   * ����� � 6  * � � � 2   ��
�� 
OTst � F    ) � � � >    � � � n     � � � m    ��
�� 
pcls � n    � � � 1    ��
�� 
valL �  g     � m    ��
�� 
cobj � >   ( � � � n     $ � � � m   " $��
�� 
pcls � n    " � � � 1     "��
�� 
valL �  g       � m   % '��
�� 
FCAr��  ��   � o      ���� 00 validselecteditemslist validSelectedItemsList �  � � � r   / 6 � � � I  / 4�� ���
�� .corecnte****       **** � o   / 0���� 00 validselecteditemslist validSelectedItemsList��   � o      ���� 0 
totalitems 
totalItems �  � � � Z   7 X � ����� � =  7 : � � � o   7 8���� 0 
totalitems 
totalItems � m   8 9����   � k   = T � �  � � � r   = @ � � � m   = > � � � � � 
 E r r o r � o      ���� 0 	alertname 	alertName �  � � � r   A D � � � m   A B � � � � �  S c r i p t   f a i l u r e � o      ���� 0 
alerttitle 
alertTitle �  � � � r   E H � � � m   E F � � � � � 2 N o   v a l i d   t a s k ( s )   s e l e c t e d � o      ���� 0 	alerttext 	alertText �  � � � n  I Q � � � I   J Q�� ����� 
0 notify   �  � � � o   J K���� 0 	alertname 	alertName �  � � � o   K L���� 0 
alerttitle 
alertTitle �  ��� � o   L M���� 0 	alerttext 	alertText��  ��   �  f   I J �  ��� � L   R T����  ��  ��  ��   �  � � � l  Y Y��������  ��  ��   �  � � � l  Y Y�� � ���   �  User options    � � � �  U s e r   o p t i o n s �  � � � I  Y w�� � �
�� .sysodlogaskr        TEXT � m   Y Z � � � � � P D e f e r   f o r   h o w   m a n y   d a y s   ( f r o m   e x i s t i n g ) ? � �� � �
�� 
dtxt � o   ] b���� 0 defaultoffset defaultOffset � �� � �
�� 
btns � J   e m � �  � � � m   e h � � � � �  C a n c e l �  ��� � m   h k � � � � �  O K��   � �� ���
�� 
dflt � m   p q���� ��   �  � � � r   x � � � � c   x � � � � l  x  ����� � l  x  ����� � n   x  � � � 1   { ��
�� 
ttxt � l  x { ����� � 1   x {��
�� 
rslt��  ��  ��  ��  ��  ��   � m    ���
�� 
long � o      ���� 0 
daysoffset 
daysOffset �  � � � Z   � � � ����� � o   � ����� ,0 promptforchangescope promptForChangeScope � k   � � � �  � � � r   � � � � � I  � ��� 
�� .sysodlogaskr        TEXT  m   � � � 6 M o d i f y   s t a r t   a n d   d u e   d a t e s ? ��
�� 
btns l 
 � ����� J   � � 	 m   � �

 �  C a n c e l	  m   � � �  D u e   O n l y �� m   � � �  S t a r t   a n d   D u e��  ��  ��   ��
�� 
dflt m   � �����  ��
�� 
disp m   � ���
�� stic    ����
�� 
givu m   � ����� <��   � o      ���� $0 changescopequery changeScopeQuery �  r   � � n   � � 1   � ���
�� 
bhit o   � ����� $0 changescopequery changeScopeQuery o      ���� 0 changescope changeScope �� Z  � � ���� =  � �!"! o   � ����� 0 changescope changeScope" m   � �## �$$  C a n c e l  L   � �����  ��  ��  ��  ��  ��   � %&% Z   �'()��' =  � �*+* o   � ����� 0 changescope changeScope+ m   � �,, �--  S t a r t   a n d   D u e( k   � �.. /0/ r   � �121 m   � ���
�� boovtrue2 o      ���� "0 modifystartdate modifyStartDate0 3��3 r   � �454 m   � ���
�� boovtrue5 o      ���� 0 modifyduedate modifyDueDate��  ) 676 =  � �898 o   � ����� 0 changescope changeScope9 m   � �:: �;;  D u e   O n l y7 <=< k   �>> ?@? r   � ABA m   � ��
� boovfalsB o      �~�~ "0 modifystartdate modifyStartDate@ C�}C r  DED m  �|
�| boovtrueE o      �{�{ 0 modifyduedate modifyDueDate�}  = FGF = HIH o  �z�z 0 changescope changeScopeI m  JJ �KK  S t a r t   O n l yG L�yL k  MM NON r  PQP m  �x
�x boovtrueQ o      �w�w "0 modifystartdate modifyStartDateO R�vR r  STS m  �u
�u boovfalsT o      �t�t 0 modifyduedate modifyDueDate�v  �y  ��  & UVU l �s�r�q�s  �r  �q  V WXW l �pYZ�p  Y  Perform action   Z �[[  P e r f o r m   a c t i o nX \]\ r  "^_^ m   �o�o  _ o      �n�n 0 
successtot 
successTot] `a` r  #&bcb m  #$�m
�m boovfalsc o      �l�l 0 autosave  a ded r  'Cfgf [  'Ahih \  '7jkj l ',l�k�jl I ',�i�h�g
�i .misccurdldt    ��� null�h  �g  �k  �j  k l ,6m�f�em e  ,6nn n  ,6opo 1  15�d
�d 
timep l ,1q�c�bq I ,1�a�`�_
�a .misccurdldt    ��� null�`  �_  �c  �b  �f  �e  i l 7@r�^�]r ]  7@sts o  7<�\�\ $0 defaultstarttime defaultStartTimet m  <?�[�[�^  �]  g o      �Z�Z 0 
todaystart 
todayStarte uvu X  Dww�Yxw k  Vryy z{z r  Vd|}| n Vb~~ I  Wb�X��W�X 	0 defer  � ��� o  WX�V�V 0 thisitem thisItem� ��� o  XY�U�U 0 
daysoffset 
daysOffset� ��� o  YZ�T�T "0 modifystartdate modifyStartDate� ��� o  Z[�S�S 0 modifyduedate modifyDueDate� ��R� o  [\�Q�Q 0 
todaystart 
todayStart�R  �W    f  VW} o      �P�P 0 	succeeded  { ��O� Z er���N�M� o  ef�L�L 0 	succeeded  � r  in��� [  il��� o  ij�K�K 0 
successtot 
successTot� m  jk�J�J � o      �I�I 0 
successtot 
successTot�N  �M  �O  �Y 0 thisitem thisItemx o  GH�H�H 00 validselecteditemslist validSelectedItemsListv ��G� r  x{��� m  xy�F
�F boovtrue� o      �E�E 0 autosave  �G   � n    ��� 1    �D
�D 
FCcn� n    ��� 4   �C�
�C 
FCdw� m   	 
�B�B � 4   �A�
�A 
docu� m    �@�@  � m     ���                                                                                  OFOC  alis    X  Macintosh HD               ���H+  i��OmniFocus.app                                                  uUϛ��        ����  	                Applications    ��x      ϜGV    i��  (Macintosh HD:Applications: OmniFocus.app    O m n i F o c u s . a p p    M a c i n t o s h   H D  Applications/OmniFocus.app  / ��   � ��� l ~~�?�>�=�?  �>  �=  � ��� l ~~�<���<  � " Display summary notification   � ��� 8 D i s p l a y   s u m m a r y   n o t i f i c a t i o n� ��;� Z  ~����:�9� o  ~��8�8 20 showsummarynotification showSummaryNotification� k  ���� ��� r  ����� m  ���� ���  G e n e r a l� o      �7�7 0 	alertname 	alertName� ��� r  ����� m  ���� ���  S c r i p t   c o m p l e t e� o      �6�6 0 
alerttitle 
alertTitle� ��� Z �����5�4� > ����� o  ���3�3 0 
daysoffset 
daysOffset� m  ���2�2 � r  ����� m  ���� ���  s� o      �1�1 0 alertdaynum alertDayNum�5  �4  � ��� Z �����0�/� ?  ����� o  ���.�. 0 
successtot 
successTot� m  ���-�- � r  ����� m  ���� ���  s� o      �,�, 0 alertitemnum alertItemNum�0  �/  � ��� r  ����� c  ����� b  ����� b  ����� b  ����� b  ����� b  ����� b  ����� b  ����� b  ����� b  ����� o  ���+�+ 0 
successtot 
successTot� m  ���� ��� 
   i t e m� o  ���*�* 0 alertitemnum alertItemNum� m  ���� ���    d e f e r r e d  � o  ���)�) 0 
daysoffset 
daysOffset� m  ���� ���    d a y� o  ���(�( 0 alertdaynum alertDayNum� m  ���� ���  .   (� o  ���'�' 0 changescope changeScope� m  ���� ���  )� m  ���&
�& 
TEXT� o      �%�% 0 	alerttext 	alertText� ��$� n ����� I  ���#��"�# 
0 notify  � ��� o  ���!�! 0 	alertname 	alertName� ��� o  ��� �  0 
alerttitle 
alertTitle� ��� o  ���� 0 	alerttext 	alertText�  �"  �  f  ���$  �:  �9  �;   � ��� l     ����  �  �  � ��� i   > A��� I      ���� 	0 defer  � ��� o      �� 0 selecteditem selectedItem� ��� o      �� 0 
daysoffset 
daysOffset� ��� o      �� "0 modifystartdate modifyStartDate� ��� o      �� 0 modifyduedate modifyDueDate�  �  o      �� 0 
todaystart 
todayStart�  �  � k    9  r      m     �
� boovfals o      �� 0 success    O   6	 Q   5
�
 k   ,  r     n     1    �
� 
FCDs o    �� 0 selecteditem selectedItem o      �� 0 realstartdate realStartDate  r    ) n    I    ��� .0 geteffectivestartdate getEffectiveStartDate  o    �
�
 0 selecteditem selectedItem �	 n     1    �
� 
FCDs o    �� 0 selecteditem selectedItem�	  �    f     J        !  o      �� 0 startancestor startAncestor! "�" o      �� (0 effectivestartdate effectiveStartDate�   #$# r   * /%&% n   * -'(' 1   + -�
� 
FCDd( o   * +�� 0 selecteditem selectedItem& o      �� 0 realduedate realDueDate$ )*) r   0 H+,+ n  0 9-.- I   1 9� /���  *0 geteffectiveduedate getEffectiveDueDate/ 010 o   1 2���� 0 selecteditem selectedItem1 2��2 n   2 5343 1   3 5��
�� 
FCDd4 o   2 3���� 0 selecteditem selectedItem��  ��  .  f   0 1, J      55 676 o      ���� 0 dueancestor dueAncestor7 8��8 o      ���� $0 effectiveduedate effectiveDueDate��  * 9:9 Z   I �;<����; o   I J���� "0 modifystartdate modifyStartDate< Z   M �=>����= l  M P?����? >  M P@A@ o   M N���� 0 realstartdate realStartDateA m   N O��
�� 
msng��  ��  > l  S �BCDB k   S �EE FGF r   S ^HIH n  S ZJKJ I   T Z��L���� $0 offsetdatebydays offsetDateByDaysL MNM o   T U���� 0 realstartdate realStartDateN O��O o   U V���� 0 
daysoffset 
daysOffset��  ��  K  f   S TI n      PQP 1   [ ]��
�� 
FCDsQ o   Z [���� 0 selecteditem selectedItemG R��R Z   _ �ST����S o   _ d���� (0 warnondatemismatch warnOnDateMismatchT Z   g �UV����U >  g jWXW o   g h���� 0 realstartdate realStartDateX o   h i���� (0 effectivestartdate effectiveStartDateV k   m �YY Z[Z r   m �\]\ b   m ~^_^ b   m |`a` b   m vbcb b   m tded m   m nff �gg  �e l  n sh����h n   n siji 1   q s��
�� 
pnamj n   n qklk 1   o q��
�� 
pcntl o   n o���� 0 selecteditem selectedItem��  ��  c l 	 t um����m m   t unn �oo f �   h a s   a   l a t e r   e f f e c t i v e   s t a r t   d a t e   i n h e r i t e d   f r o m   ���  ��  a l  v {p����p n   v {qrq 1   y {��
�� 
pnamr n   v ysts 1   w y��
�� 
pcntt o   v w���� 0 dueancestor dueAncestor��  ��  _ l 	 | }u����u m   | }vv �ww F � .   T h e   l a t t e r   h a s   n o t   b e e n   c h a n g e d .��  ��  ] o      ���� 0 	alerttext 	alertText[ x��x n  � �yzy I   � ���{���� $0 notifywithsticky notifyWithSticky{ |}| m   � �~~ � 
 E r r o r} ��� m   � ��� ��� 8 P o s s i b l e   S t a r t   D a t e   M i s m a t c h� ���� o   � ����� 0 	alerttext 	alertText��  ��  z  f   � ���  ��  ��  ��  ��  ��  C &  There's a preexisting start date   D ��� @ T h e r e ' s   a   p r e e x i s t i n g   s t a r t   d a t e��  ��  ��  ��  : ��� Z   �(������ l  � ������� >  � ���� o   � ����� 0 realduedate realDueDate� m   � ���
�� 
msng��  ��  � l  � ����� k   � ��� ��� Z   � �������� o   � ����� 0 modifyduedate modifyDueDate� r   � ���� n  � ���� I   � �������� $0 offsetdatebydays offsetDateByDays� ��� o   � ����� 0 realduedate realDueDate� ���� o   � ����� 0 
daysoffset 
daysOffset��  ��  �  f   � �� n      ��� 1   � ���
�� 
FCDd� o   � ����� 0 selecteditem selectedItem��  ��  � ���� Z   � �������� >  � ���� o   � ����� 0 realduedate realDueDate� o   � ����� $0 effectiveduedate effectiveDueDate� l  � ����� k   � ��� ��� l  � �������  � " 				contents of selectedItem   � ��� 8 	 	 	 	 c o n t e n t s   o f   s e l e c t e d I t e m� ���� Z   � �������� F   � ���� o   � ����� 0 modifyduedate modifyDueDate� o   � ����� (0 warnondatemismatch warnOnDateMismatch� k   � ��� ��� r   � ���� b   � ���� b   � ���� b   � ���� b   � ���� m   � ��� ���  �� l  � ������� n   � ���� 1   � ���
�� 
pnam� n   � ���� 1   � ���
�� 
pcnt� o   � ����� 0 selecteditem selectedItem��  ��  � l 	 � ������� m   � ��� ��� h �   h a s   a n   e a r l i e r   e f f e c t i v e   d u e   d a t e   i n h e r i t e d   f r o m   ���  ��  � l  � ������� n   � ���� 1   � ���
�� 
pnam� n   � ���� 1   � ���
�� 
pcnt� o   � ����� 0 dueancestor dueAncestor��  ��  � l 	 � ������� m   � ��� ��� F � .   T h e   l a t t e r   h a s   n o t   b e e n   c h a n g e d .��  ��  � o      ���� 0 	alerttext 	alertText� ���� n  � ���� I   � �������� $0 notifywithsticky notifyWithSticky� ��� m   � ��� ��� 
 E r r o r� ��� m   � ��� ��� 4 P o s s i b l e   D u e   D a t e   M i s m a t c h� ���� o   � ����� 0 	alerttext 	alertText��  ��  �  f   � ���  ��  ��  ��  � 1 +alert if there's a different effective date   � ��� V a l e r t   i f   t h e r e ' s   a   d i f f e r e n t   e f f e c t i v e   d a t e��  ��  ��  � $ There's a preexisting due date   � ��� < T h e r e ' s   a   p r e e x i s t i n g   d u e   d a t e� ��� o   � ���� 00 snoozeunscheduleditems snoozeUnscheduledItems� ���� Z  $������� = ��� n  ��� 1  ��
�� 
FCDs� o  ���� 0 selecteditem selectedItem� m  ��
�� 
msng� k   �� ��� r  ��� n ��� I  ������� $0 offsetdatebydays offsetDateByDays� ��� o  ���� 0 
todaystart 
todayStart� ���� o  ���� 0 
daysoffset 
daysOffset��  ��  �  f  � o      ���� 0 test  � ���� r   ��� n ��� I  ������� $0 offsetdatebydays offsetDateByDays� ��� o  ���� 0 
todaystart 
todayStart� ���� o  ���� 0 
daysoffset 
daysOffset��  ��  �  f  � n      ��� 1  ��
�� 
FCDs� o  ���� 0 selecteditem selectedItem��  ��  ��  ��  ��  �  ��  r  ), m  )*��
�� boovtrue o      ���� 0 success  ��   R      ������
�� .ascrerr ****      � ****��  ��  �  	 m    �                                                                                  OFOC  alis    X  Macintosh HD               ���H+  i��OmniFocus.app                                                  uUϛ��        ����  	                Applications    ��x      ϜGV    i��  (Macintosh HD:Applications: OmniFocus.app    O m n i F o c u s . a p p    M a c i n t o s h   H D  Applications/OmniFocus.app  / ��   �� L  79 o  78���� 0 success  ��  �  l     ����~��  �  �~   	 i   B E

 I      �}�|�} *0 geteffectiveduedate getEffectiveDueDate  o      �{�{ 0 thisitem thisItem �z o      �y�y $0 effectiveduedate effectiveDueDate�z  �|   k     Q  O     K k    J  Z    /�x�w >   	 n     1    �v
�v 
FCDd o    �u�u 0 thisitem thisItem m    �t
�t 
msng Z    + �s =   !"! o    �r�r $0 effectiveduedate effectiveDueDate" m    �q
�q 
msng r    #$# n    %&% 1    �p
�p 
FCDd& o    �o�o 0 thisitem thisItem$ o      �n�n $0 effectiveduedate effectiveDueDate  '(' A   )*) n    +,+ 1    �m
�m 
FCDd, o    �l�l 0 thisitem thisItem* o    �k�k $0 effectiveduedate effectiveDueDate( -�j- r   " './. n   " %010 1   # %�i
�i 
FCDd1 o   " #�h�h 0 thisitem thisItem/ o      �g�g $0 effectiveduedate effectiveDueDate�j  �s  �x  �w   2�f2 Z   0 J34�e53 =  0 5676 n   0 3898 1   1 3�d
�d 
FCPt9 o   0 1�c�c 0 thisitem thisItem7 m   3 4�b
�b 
msng4 L   8 =:: J   8 <;; <=< o   8 9�a�a 0 thisitem thisItem= >�`> o   9 :�_�_ $0 effectiveduedate effectiveDueDate�`  �e  5 L   @ J?? n  @ I@A@ I   A I�^B�]�^ *0 geteffectiveduedate getEffectiveDueDateB CDC n   A DEFE 1   B D�\
�\ 
FCPtF o   A B�[�[ 0 thisitem thisItemD G�ZG o   D E�Y�Y $0 effectiveduedate effectiveDueDate�Z  �]  A  f   @ A�f   m     HH�                                                                                  OFOC  alis    X  Macintosh HD               ���H+  i��OmniFocus.app                                                  uUϛ��        ����  	                Applications    ��x      ϜGV    i��  (Macintosh HD:Applications: OmniFocus.app    O m n i F o c u s . a p p    M a c i n t o s h   H D  Applications/OmniFocus.app  / ��   I�XI L   L QJJ J   L PKK LML o   L M�W�W 0 dueancestor dueAncestorM N�VN o   M N�U�U $0 effectiveduedate effectiveDueDate�V  �X  	 OPO l     �T�S�R�T  �S  �R  P QRQ i   F ISTS I      �QU�P�Q .0 geteffectivestartdate getEffectiveStartDateU VWV o      �O�O 0 thisitem thisItemW X�NX o      �M�M (0 effectivestartdate effectiveStartDate�N  �P  T k     QYY Z[Z O     K\]\ k    J^^ _`_ Z    /ab�L�Ka >   	cdc n    efe 1    �J
�J 
FCDsf o    �I�I 0 thisitem thisItemd m    �H
�H 
msngb Z    +ghi�Gg =   jkj o    �F�F (0 effectivestartdate effectiveStartDatek m    �E
�E 
msngh r    lml n    non 1    �D
�D 
FCDso o    �C�C 0 thisitem thisItemm o      �B�B (0 effectivestartdate effectiveStartDatei pqp ?   rsr n    tut 1    �A
�A 
FCDsu o    �@�@ 0 thisitem thisItems o    �?�? (0 effectivestartdate effectiveStartDateq v�>v r   " 'wxw n   " %yzy 1   # %�=
�= 
FCDsz o   " #�<�< 0 thisitem thisItemx o      �;�; (0 effectivestartdate effectiveStartDate�>  �G  �L  �K  ` {�:{ Z   0 J|}�9~| =  0 5� n   0 3��� 1   1 3�8
�8 
FCPt� o   0 1�7�7 0 thisitem thisItem� m   3 4�6
�6 
msng} L   8 =�� J   8 <�� ��� o   8 9�5�5 0 thisitem thisItem� ��4� o   9 :�3�3 (0 effectivestartdate effectiveStartDate�4  �9  ~ L   @ J�� n  @ I��� I   A I�2��1�2 .0 geteffectivestartdate getEffectiveStartDate� ��� n   A D��� 1   B D�0
�0 
FCPt� o   A B�/�/ 0 thisitem thisItem� ��.� o   D E�-�- (0 effectivestartdate effectiveStartDate�.  �1  �  f   @ A�:  ] m     ���                                                                                  OFOC  alis    X  Macintosh HD               ���H+  i��OmniFocus.app                                                  uUϛ��        ����  	                Applications    ��x      ϜGV    i��  (Macintosh HD:Applications: OmniFocus.app    O m n i F o c u s . a p p    M a c i n t o s h   H D  Applications/OmniFocus.app  / ��  [ ��,� L   L Q�� J   L P�� ��� o   L M�+�+ 0 startancestor startAncestor� ��*� o   M N�)�) (0 effectivestartdate effectiveStartDate�*  �,  R ��� l     �(�'�&�(  �'  �&  � ��� i   J M��� I      �%��$�% $0 offsetdatebydays offsetDateByDays� ��� o      �#�# 0 mydate myDate� ��"� o      �!�! 0 
daysoffset 
daysOffset�"  �$  � L     �� [     ��� o     � �  0 mydate myDate� l   ���� ]    ��� m    ��  Q�� o    �� 0 
daysoffset 
daysOffset�  �  � ��� l     ����  �  �  � ��� l      ����  �   Begin notification code    � ��� 2   B e g i n   n o t i f i c a t i o n   c o d e  � ��� i   N Q��� I      ���� 
0 notify  � ��� o      �� 0 	alertname 	alertName� ��� o      �� 0 
alerttitle 
alertTitle� ��� o      �� 0 	alerttext 	alertText�  �  � k     	�� ��� l     ����  � - 'Call this to show a normal notification   � ��� N C a l l   t h i s   t o   s h o w   a   n o r m a l   n o t i f i c a t i o n� ��� n    	��� I    	���� 0 
notifymain 
notifyMain� ��� o    �� 0 	alertname 	alertName� ��� o    �� 0 
alerttitle 
alertTitle� ��� o    �� 0 	alerttext 	alertText� ��
� m    �	
�	 boovfals�
  �  �  f     �  � ��� l     ����  �  �  � ��� i   R U��� I      ���� $0 notifywithsticky notifyWithSticky� ��� o      �� 0 	alertname 	alertName� ��� o      �� 0 
alerttitle 
alertTitle� ��� o      � �  0 	alerttext 	alertText�  �  � k     	�� ��� l     ������  � &  Show a sticky Growl notification   � ��� @ S h o w   a   s t i c k y   G r o w l   n o t i f i c a t i o n� ���� n    	��� I    	������� 0 
notifymain 
notifyMain� ��� o    ���� 0 	alertname 	alertName� ��� o    ���� 0 
alerttitle 
alertTitle� ��� o    ���� 0 	alerttext 	alertText� ���� m    ��
�� boovtrue��  ��  �  f     ��  � ��� l     ��������  ��  ��  � ��� i   V Y��� I      ��������  0 isgrowlrunning IsGrowlRunning��  ��  � k     �� ��� O    ��� r    ��� ?    ��� l   ������ I   �����
�� .corecnte****       ****� l   ������ 6  ��� 2    ��
�� 
prcs� =   ��� 1   	 ��
�� 
fcrt� m    �� ���  G R R R��  ��  ��  ��  ��  � m    ����  � o      ���� 0 growlrunning GrowlRunning� m     ���                                                                                  sevs  alis    �  Macintosh HD               ���H+  i��System Events.app                                              m���A`�        ����  	                CoreServices    ��x      �A�9    i��i��i��  =Macintosh HD:System: Library: CoreServices: System Events.app   $  S y s t e m   E v e n t s . a p p    M a c i n t o s h   H D  -System/Library/CoreServices/System Events.app   / ��  �  ��  L     o    ���� 0 growlrunning GrowlRunning��  �  l     ��������  ��  ��    i   Z ] I      ������ 0 dicttostring dictToString 	��	 o      ���� 0 dict  ��  ��   l    =

 k     =  r      m      �  { o      ���� 0 
dictstring 
dictString  X    4�� k    /  Z   %���� l   ���� ?     n     !  1    ��
�� 
leng! o    ���� 0 
dictstring 
dictString m    ���� ��  ��   r    !"#" b    $%$ o    ���� 0 
dictstring 
dictString% m    && �''  ,  # o      ���� 0 
dictstring 
dictString��  ��   (��( r   & /)*) b   & -+,+ b   & +-.- b   & )/0/ o   & '���� 0 
dictstring 
dictString0 m   ' (11 �22  ". o   ) *���� 0 i  , m   + ,33 �44  "* o      ���� 0 
dictstring 
dictString��  �� 0 i   o    ���� 0 dict   565 r   5 :787 b   5 89:9 o   5 6���� 0 
dictstring 
dictString: m   6 7;; �<<  }8 o      ���� 0 
dictstring 
dictString6 =��= L   ; =>> o   ; <���� 0 
dictstring 
dictString��   5 /needed to encapsulate dictionaries in osascript    �?? ^ n e e d e d   t o   e n c a p s u l a t e   d i c t i o n a r i e s   i n   o s a s c r i p t @A@ l     ��������  ��  ��  A BCB i   ^ aDED I      ��F���� "0 notifywithgrowl notifyWithGrowlF GHG o      ���� (0 growlhelperappname growlHelperAppNameH IJI o      ���� 0 	alertname 	alertNameJ KLK o      ���� 0 
alerttitle 
alertTitleL MNM o      ���� 0 	alerttext 	alertTextN O��O o      ���� 0 	usesticky 	useSticky��  ��  E O     7PQP k    6RR STS I   $����U
�� .register****      � ****��  U ��VW
�� 
applV o   	 ���� 0 growlappname growlAppNameW ��XY
�� 
anotX o    ���� $0 allnotifications allNotificationsY ��Z[
�� 
dnotZ o    ���� ,0 enablednotifications enabledNotifications[ ��\��
�� 
iapp\ o     ���� "0 iconapplication iconApplication��  T ]��] I  % 6����^
�� .notifygr****      � ****��  ^ ��_`
�� 
name_ o   ' (���� 0 	alertname 	alertName` ��ab
�� 
titla o   ) *���� 0 
alerttitle 
alertTitleb ��cd
�� 
applc o   + 0���� 0 growlappname growlAppNamed ��e��
�� 
desce o   1 2���� 0 	alerttext 	alertText��  ��  Q n    fgf 4    ��h
�� 
capph o    ���� (0 growlhelperappname growlHelperAppNameg  f     C iji l     ��������  ��  ��  j klk i   b emnm I      ��o���� (0 notifywithoutgrowl NotifyWithoutGrowlo p��p o      ���� 0 	alerttext 	alertText��  ��  n O    qrq I   ��st
�� .sysodlogaskr        TEXTs o    ���� 0 	alerttext 	alertTextt ��uv
�� 
dispu m    ���� v ��wx
�� 
btnsw J    yy z��z m    	{{ �||  O K��  x ��}��
�� 
dflt} m    ~~ �  O K��  r m     ���                                                                                  OFOC  alis    X  Macintosh HD               ���H+  i��OmniFocus.app                                                  uUϛ��        ����  	                Applications    ��x      ϜGV    i��  (Macintosh HD:Applications: OmniFocus.app    O m n i F o c u s . a p p    M a c i n t o s h   H D  Applications/OmniFocus.app  / ��  l ��� l     ��������  ��  ��  � ��� i   f i��� I      ������� 0 
notifymain 
notifyMain� ��� o      ���� 0 	alertname 	alertName� ��� o      ���� 0 
alerttitle 
alertTitle� ��� o      ���� 0 	alerttext 	alertText� ���� o      ���� 0 	usesticky 	useSticky��  ��  � k     ��� ��� l    ���� r     ��� n    ��� I    ��������  0 isgrowlrunning IsGrowlRunning��  ��  �  f     � o      ���� 0 growlrunning GrowlRunning� " check if Growl is running...   � ��� 8 c h e c k   i f   G r o w l   i s   r u n n i n g . . .� ��� Z    `������� H    
�� o    	���� 0 growlrunning GrowlRunning� l   \���� k    \�� ��� l   ���� r    ��� m    �� ���  � o      ���� 0 	growlpath 	GrowlPath� + %check to see if Growl is installed...   � ��� J c h e c k   t o   s e e   i f   G r o w l   i s   i n s t a l l e d . . .� ��� Q    8����� O   /��� O   .��� r     -��� b     +��� n     '��� 1   % '��
�� 
psxp� l    %������ c     %��� n    #��� m   ! #��
�� 
ctnr�  g     !� m   # $�
� 
alis��  ��  � 1   ' *�~
�~ 
pnam� o      �}�} 0 strgrowlpath strGrowlPath� l   ��|�{� 5    �z��y
�z 
appf� m    �� ���  G R R R
�y kfrmID  �|  �{  � m    ���                                                                                  MACS  alis    t  Macintosh HD               ���H+  i��
Finder.app                                                     k���_�        ����  	                CoreServices    ��x      �`D    i��i��i��  6Macintosh HD:System: Library: CoreServices: Finder.app   
 F i n d e r . a p p    M a c i n t o s h   H D  &System/Library/CoreServices/Finder.app  / ��  � R      �x�w�v
�x .ascrerr ****      � ****�w  �v  ��  � ��u� Z   9 \���t�s� >  9 <��� o   9 :�r�r 0 	growlpath 	GrowlPath� m   : ;�� ���  � l  ? X���� k   ? X�� ��� I  ? H�q��p
�q .sysoexecTEXT���     TEXT� b   ? D��� b   ? B��� m   ? @�� ��� 
 o p e n  � o   @ A�o�o 0 strgrowlpath strGrowlPath� m   B C�� ��� &   >   / d e v / n u l l   2 > & 1   &�p  � ��� I  I P�n��m
�n .sysodelanull��� ��� nmbr� m   I L�� ?�      �m  � ��l� r   Q X��� n  Q V��� I   R V�k�j�i�k  0 isgrowlrunning IsGrowlRunning�j  �i  �  f   Q R� o      �h�h 0 growlrunning GrowlRunning�l  �  ...try to launch if so...   � ��� 2 . . . t r y   t o   l a u n c h   i f   s o . . .�t  �s  �u  �  if Growl isn't running...   � ��� 2 i f   G r o w l   i s n ' t   r u n n i n g . . .��  ��  � ��g� Z   a ����f�� F   a n��� o   a f�e�e 0 usegrowl useGrowl� o   i j�d�d 0 growlrunning GrowlRunning� k   q ��� ��� O  q ���� O  u ���� r    ���� 1    ��c
�c 
pnam� o      �b�b (0 growlhelperappname growlHelperAppName� l  u |��a�`� 5   u |�_��^
�_ 
appf� m   w z�� ���  G R R R
�^ kfrmID  �a  �`  � m   q r���                                                                                  MACS  alis    t  Macintosh HD               ���H+  i��
Finder.app                                                     k���_�        ����  	                CoreServices    ��x      �`D    i��i��i��  6Macintosh HD:System: Library: CoreServices: Finder.app   
 F i n d e r . a p p    M a c i n t o s h   H D  &System/Library/CoreServices/Finder.app  / ��  � ��]� I   � ��\��[�\ "0 notifywithgrowl notifyWithGrowl� ��� o   � ��Z�Z (0 growlhelperappname growlHelperAppName� ��� o   � ��Y�Y 0 	alertname 	alertName�    o   � ��X�X 0 
alerttitle 
alertTitle  o   � ��W�W 0 	alerttext 	alertText �V o   � ��U�U 0 	usesticky 	useSticky�V  �[  �]  �f  � I   � ��T�S�T (0 notifywithoutgrowl NotifyWithoutGrowl �R o   � ��Q�Q 0 	alerttext 	alertText�R  �S  �g  �  l      �P	
�P  	   end notification code    
 � .   e n d   n o t i f i c a t i o n   c o d e    l     �O�N�M�O  �N  �M    l    �L�K I     �J�I�H�J 0 main  �I  �H  �L  �K   �G l     �F�E�D�F  �E  �D  �G       �C�B�A�@�?�>�=�< K X ] b } !�C   �;�:�9�8�7�6�5�4�3�2�1�0�/�.�-�,�+�*�)�(�'�&�%�$�#�"�!�; 00 snoozeunscheduleditems snoozeUnscheduledItems�: 20 showsummarynotification showSummaryNotification�9 0 usegrowl useGrowl�8 0 defaultoffset defaultOffset�7 $0 defaultstarttime defaultStartTime�6 (0 warnondatemismatch warnOnDateMismatch�5 ,0 promptforchangescope promptForChangeScope�4 0 changescope changeScope�3 0 alertitemnum alertItemNum�2 0 alertdaynum alertDayNum�1 0 growlappname growlAppName�0 $0 allnotifications allNotifications�/ ,0 enablednotifications enabledNotifications�. "0 iconapplication iconApplication�- 0 main  �, 	0 defer  �+ *0 geteffectiveduedate getEffectiveDueDate�* .0 geteffectivestartdate getEffectiveStartDate�) $0 offsetdatebydays offsetDateByDays�( 
0 notify  �' $0 notifywithsticky notifyWithSticky�&  0 isgrowlrunning IsGrowlRunning�% 0 dicttostring dictToString�$ "0 notifywithgrowl notifyWithGrowl�# (0 notifywithoutgrowl NotifyWithoutGrowl�" 0 
notifymain 
notifyMain
�! .aevtoappnull  �   � ****
�B boovtrue
�A boovtrue
�@ boovtrue�? �> 	
�= boovtrue
�< boovfals � "�  "   j m �#� #   u x � ���$%�� 0 main  �  �  $ ��������������� 00 validselecteditemslist validSelectedItemsList� 0 
totalitems 
totalItems� 0 	alertname 	alertName� 0 
alerttitle 
alertTitle� 0 	alerttext 	alertText� 0 
daysoffset 
daysOffset� $0 changescopequery changeScopeQuery� "0 modifystartdate modifyStartDate� 0 modifyduedate modifyDueDate� 0 
successtot 
successTot� 0 autosave  � 0 
todaystart 
todayStart� 0 thisitem thisItem� 0 	succeeded  % 8����
�	&����� � � �� ��� � �� ����������
������������#,:J�����������������������
� 
docu
� 
FCdw
�
 
FCcn
�	 
OTst&  
� 
valL
� 
pcls
� 
cobj
� 
FCAr
� .corecnte****       ****� 
0 notify  
� 
dtxt
� 
btns
�  
dflt�� 
�� .sysodlogaskr        TEXT
�� 
rslt
�� 
ttxt
�� 
long
�� 
disp
�� stic   
�� 
givu�� <�� 
�� 
bhit
�� .misccurdldt    ��� null
�� 
time��
�� 
kocl�� �� 	0 defer  
�� 
TEXT���z*�k/�k/�,m*�-�[[�,�,\Z�9\[�,�,\Z�9A1�,E�O�j 
E�O�j  �E�O�E�O�E�O)���m+ OhY hO�a b  a a a lva la  O_ a ,a &E�Ob   Ma a a a a mva ma a a  a !a " E�O�a #,Ec  Ob  a $  hY hY hOb  a %  eE�OeE�Y /b  a &  fE�OeE�Y b  a '  eE�OfE�Y hOjE�OfE�O*j (*j (a ),Eb  a * E�O 2�[a +�l 
kh )�����a ,+ -E�O� 
�kE�Y h[OY��OeE�UUOb   qa .E�Oa /E�O�k a 0Ec  	Y hO�k a 1Ec  Y hO�a 2%b  %a 3%�%a 4%b  	%a 5%b  %a 6%a 7&E�O)���m+ Y h �������'(���� 	0 defer  �� ��)�� )  ������������ 0 selecteditem selectedItem�� 0 
daysoffset 
daysOffset�� "0 modifystartdate modifyStartDate�� 0 modifyduedate modifyDueDate�� 0 
todaystart 
todayStart��  ' ������������������������������ 0 selecteditem selectedItem�� 0 
daysoffset 
daysOffset�� "0 modifystartdate modifyStartDate�� 0 modifyduedate modifyDueDate�� 0 
todaystart 
todayStart�� 0 success  �� 0 realstartdate realStartDate�� 0 startancestor startAncestor�� (0 effectivestartdate effectiveStartDate�� 0 realduedate realDueDate�� 0 dueancestor dueAncestor�� $0 effectiveduedate effectiveDueDate�� 0 	alerttext 	alertText�� 0 test  ( ��������������f����nv~��������������
�� 
FCDs�� .0 geteffectivestartdate getEffectiveStartDate
�� 
cobj
�� 
FCDd�� *0 geteffectiveduedate getEffectiveDueDate
�� 
msng�� $0 offsetdatebydays offsetDateByDays
�� 
pcnt
�� 
pnam�� $0 notifywithsticky notifyWithSticky
�� 
bool��  ��  ��:fE�O�/&��,E�O)���,l+ E[�k/E�Z[�l/E�ZO��,E�O)���,l+ E[�k/E�Z[�l/E�ZO� M�� C)��l+ ��,FOb   +�� !��,�,%�%��,�,%�%E�O)��m+ Y hY hY hY hO�� ]� )��l+ ��,FY hO�� ?�	 b  a & +a ��,�,%a %��,�,%a %E�O)a a �m+ Y hY hY /b    &��,�  )��l+ E�O)��l+ ��,FY hY hOeE�W X  hUO� ������*+���� *0 geteffectiveduedate getEffectiveDueDate�� ��,�� ,  ������ 0 thisitem thisItem�� $0 effectiveduedate effectiveDueDate��  * �������� 0 thisitem thisItem�� $0 effectiveduedate effectiveDueDate�� 0 dueancestor dueAncestor+ H��������
�� 
FCDd
�� 
msng
�� 
FCPt�� *0 geteffectiveduedate getEffectiveDueDate�� R� H��,� $��  
��,E�Y ��,� 
��,E�Y hY hO��,�  
��lvY )��,�l+ UO��lv ��T����-.���� .0 geteffectivestartdate getEffectiveStartDate�� ��/�� /  ������ 0 thisitem thisItem�� (0 effectivestartdate effectiveStartDate��  - �������� 0 thisitem thisItem�� (0 effectivestartdate effectiveStartDate�� 0 startancestor startAncestor. ���������
�� 
FCDs
�� 
msng
�� 
FCPt�� .0 geteffectivestartdate getEffectiveStartDate�� R� H��,� $��  
��,E�Y ��,� 
��,E�Y hY hO��,�  
��lvY )��,�l+ UO��lv �������01���� $0 offsetdatebydays offsetDateByDays�� ��2�� 2  ������ 0 mydate myDate�� 0 
daysoffset 
daysOffset��  0 ������ 0 mydate myDate�� 0 
daysoffset 
daysOffset1 ����  Q��� ��  �������34���� 
0 notify  �� ��5�� 5  �������� 0 	alertname 	alertName�� 0 
alerttitle 
alertTitle�� 0 	alerttext 	alertText��  3 �������� 0 	alertname 	alertName�� 0 
alerttitle 
alertTitle�� 0 	alerttext 	alertText4 ������ �� 0 
notifymain 
notifyMain�� 
)���f�+  �������67���� $0 notifywithsticky notifyWithSticky�� ��8�� 8  �������� 0 	alertname 	alertName�� 0 
alerttitle 
alertTitle�� 0 	alerttext 	alertText��  6 �������� 0 	alertname 	alertName�� 0 
alerttitle 
alertTitle�� 0 	alerttext 	alertText7 ������ �� 0 
notifymain 
notifyMain�� 
)���e�+  �������9:����  0 isgrowlrunning IsGrowlRunning��  ��  9 ���� 0 growlrunning GrowlRunning: ���&�����
�� 
prcs
�� 
fcrt
�� .corecnte****       ****�� � *�-�[�,\Z�81j jE�UO� ����~;<�}�� 0 dicttostring dictToString� �|=�| =  �{�{ 0 dict  �~  ; �z�y�x�z 0 dict  �y 0 
dictstring 
dictString�x 0 i  < 	�w�v�u�t&13;
�w 
kocl
�v 
cobj
�u .corecnte****       ****
�t 
leng�} >�E�O /�[��l kh ��,k 
��%E�Y hO��%�%�%E�[OY��O��%E�O� �sE�r�q>?�p�s "0 notifywithgrowl notifyWithGrowl�r �o@�o @  �n�m�l�k�j�n (0 growlhelperappname growlHelperAppName�m 0 	alertname 	alertName�l 0 
alerttitle 
alertTitle�k 0 	alerttext 	alertText�j 0 	usesticky 	useSticky�q  > �i�h�g�f�e�i (0 growlhelperappname growlHelperAppName�h 0 	alertname 	alertName�g 0 
alerttitle 
alertTitle�f 0 	alerttext 	alertText�e 0 	usesticky 	useSticky? �d�c�b�a�`�_�^�]�\�[�Z
�d 
capp
�c 
appl
�b 
anot
�a 
dnot
�` 
iapp�_ 
�^ .register****      � ****
�] 
name
�\ 
titl
�[ 
desc
�Z .notifygr****      � ****�p 8)�/ 1*�b  
�b  �b  �b  � O*���b  
�� 
U �Yn�X�WAB�V�Y (0 notifywithoutgrowl NotifyWithoutGrowl�X �UC�U C  �T�T 0 	alerttext 	alertText�W  A �S�S 0 	alerttext 	alertTextB ��R�Q{�P~�O�N
�R 
disp
�Q 
btns
�P 
dflt�O 
�N .sysodlogaskr        TEXT�V � ��k��kv��� U  �M��L�KDE�J�M 0 
notifymain 
notifyMain�L �IF�I F  �H�G�F�E�H 0 	alertname 	alertName�G 0 
alerttitle 
alertTitle�F 0 	alerttext 	alertText�E 0 	usesticky 	useSticky�K  D �D�C�B�A�@�?�>�=�D 0 	alertname 	alertName�C 0 
alerttitle 
alertTitle�B 0 	alerttext 	alertText�A 0 	usesticky 	useSticky�@ 0 growlrunning GrowlRunning�? 0 	growlpath 	GrowlPath�> 0 strgrowlpath strGrowlPath�= (0 growlhelperappname growlHelperAppNameE �<���;��:�9�8�7�6�5�4����3��2�1��0�/�.�<  0 isgrowlrunning IsGrowlRunning
�; 
appf
�: kfrmID  
�9 
ctnr
�8 
alis
�7 
psxp
�6 
pnam�5  �4  
�3 .sysoexecTEXT���     TEXT
�2 .sysodelanull��� ��� nmbr
�1 
bool�0 �/ "0 notifywithgrowl notifyWithGrowl�. (0 notifywithoutgrowl NotifyWithoutGrowl�J �)j+  E�O� T�E�O  � *���0 *�,�&�,*�,%E�UUW X 
 hO�� ��%�%j Oa j O)j+  E�Y hY hOb  	 �a & '� *�a �0 *�,E�UUO*�����a + Y *�k+ ! �-G�,�+HI�*
�- .aevtoappnull  �   � ****G k     JJ �)�)  �,  �+  H  I �(�( 0 main  �* *j+   ascr  ��ޭ
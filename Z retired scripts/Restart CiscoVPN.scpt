FasdUAS 1.101.10   ��   ��    k             l      ��  ��   ��
Script to restart CiscoVPNI was getting the following error:
"Error 51: Unable to communicate with the VPN subsystem. Please make sure that you have at least one network interface that is currently active and has an IP address and start this application again."

This hint provides several workarounds:
macosxhints.com - 10.4: A workaround for Cisco VPN issues after sleep 
http://www.macosxhints.com/article.php?story=20050613022757427
     � 	 	n 
 S c r i p t   t o   r e s t a r t   C i s c o V P N  I   w a s   g e t t i n g   t h e   f o l l o w i n g   e r r o r : 
 " E r r o r   5 1 :   U n a b l e   t o   c o m m u n i c a t e   w i t h   t h e   V P N   s u b s y s t e m .   P l e a s e   m a k e   s u r e   t h a t   y o u   h a v e   a t   l e a s t   o n e   n e t w o r k   i n t e r f a c e   t h a t   i s   c u r r e n t l y   a c t i v e   a n d   h a s   a n   I P   a d d r e s s   a n d   s t a r t   t h i s   a p p l i c a t i o n   a g a i n . " 
 
 T h i s   h i n t   p r o v i d e s   s e v e r a l   w o r k a r o u n d s : 
 m a c o s x h i n t s . c o m   -   1 0 . 4 :   A   w o r k a r o u n d   f o r   C i s c o   V P N   i s s u e s   a f t e r   s l e e p   
 h t t p : / / w w w . m a c o s x h i n t s . c o m / a r t i c l e . p h p ? s t o r y = 2 0 0 5 0 6 1 3 0 2 2 7 5 7 4 2 7 
   
�� 
 l     ����  I    ��  
�� .sysoexecTEXT���     TEXT  m        �   l / S y s t e m / L i b r a r y / S t a r t u p I t e m s / C i s c o V P N / C i s c o V P N   r e s t a r t  �� ��
�� 
badm  m    ��
�� boovtrue��  ��  ��  ��       ��  ��    ��
�� .aevtoappnull  �   � ****  �� ����  ��
�� .aevtoappnull  �   � ****  k         
����  ��  ��        ����
�� 
badm
�� .sysoexecTEXT���     TEXT�� ��el  ascr  ��ޭ
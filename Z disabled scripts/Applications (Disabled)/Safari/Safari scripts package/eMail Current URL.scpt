FasdUAS 1.101.10   ��   ��    k             l    1 ��  O     1  	  k    0 
 
     I   	������
�� .miscactvnull��� ��� null��  ��        Z   
 %  ����  H   
    l  
  ��  I  
 �� ��
�� .coredoexbool       obj   4   
 �� 
�� 
docu  m    ���� ��  ��    I   !��  
�� .sysodlogaskr        TEXT  m       " No browser windows are open.     ��  
�� 
btns  J        ��  m        Cancel   ��    �� ��
�� 
dflt  m    ���� ��  ��  ��     ��  I  & 0��   
�� .sfridojsnull���    obj   m   & ' ! ! | vt=document.title;x=(window.location);window.location='mailto:?Subject=Interesting%20Link&Body='+t+'\n\n%3C'+x+'%3E\n';      �� "��
�� 
dcnm " 4   ( ,�� #
�� 
docu # m   * +���� ��  ��   	 m      $ $�null     �g��  u
Safari.app������62�    ���   [ϰ0   )       9���0,�����  sfri   alis    L  Macintosh HD               �-�H+    u
Safari.app                                                      .̺��P        ����                  Applications    �e�      ���      u  $Macintosh HD:Applications:Safari.app   
 S a f a r i . a p p    M a c i n t o s h   H D  Applications/Safari.app   / ��  ��     % & % l     ������  ��   &  ' ( ' l      �� )��   )  -- USING THE MAIL APP SCRIPTING
tell application "Safari"
	set this_URL to the URL of document 1
end
tell application "Mail"
	activate
	set this_message to make new outgoing message with properties {visible:true, subject:"Interesting URL", content:("<" & this_URL & ">")}
end tell
    (  *�� * l     ������  ��  ��       �� + ,��   + ��
�� .aevtoappnull  �   � **** , �� -���� . /��
�� .aevtoappnull  �   � **** - k     1 0 0  ����  ��  ��   .   /  $������ �� ������ !����
�� .miscactvnull��� ��� null
�� 
docu
�� .coredoexbool       obj 
�� 
btns
�� 
dflt�� 
�� .sysodlogaskr        TEXT
�� 
dcnm
�� .sfridojsnull���    obj �� 2� .*j O*�k/j  ���kv�k� 	Y hO��*�k/l U ascr  ��ޭ
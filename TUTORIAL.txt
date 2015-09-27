Welcome!



To collaborate to add notification icons to your Meizu device, you have to follow the following steps.

Sorry for my english!




Notice: to modify a file you have to click on the pencil at the left, edit the file, go to the end of the page, add a title and a comment (what you want) and click on
"propose changes". I will revise it an accept it as soon as I can. You can continue editing other files even 
I still have not accepted your modification yet.





I will do it with the Telegram app as an example for this tutorial.


-1 Upload the notification icon of the app you want and add to the folder res/drawable-xxhdpi-v4.

The icon should have a size of 48x48 aprox if it is in an square layout. If the icon is on a rectangle layout, 
like the Flyme icons, you can put images 43x75. It is better in this second case because when a notification appears
into the phone, if the icon is in a square layout, it will appear a little bigger than usual.

Here you have an example of a 48x48 icon (mine)
And here a Flyme icon 43x75 

You can found some icons here:

If your icon is not listed there, you can find it inside the apk file of the app. 
Just change the extension from .apk to .zip, open it and search the icon it inside /res folder.



It has to be named "mz_stat_sys_<name of the app>.png".
Always with lowcase, in black and wite and in .png format.

For example: mz_stat_sys_telegram




-2
Now you have to go to res/values/public.xml 

In this file you will see lots of lines. You only have to focus on the intervals I have selected. 
These lines are the ones you have to edit.

You can see that each line has this pattern:

<public type="drawable" name="mz_stat_sys_<name_of_app>" id="<number in hexadecimal>" />

Now we have to associate an "id" to the icon we have just added in the previous step.
To do this, you have to edit a line (with a chinese app), and modify only the name of the icon. 
For example, if I want to add Telegram app, I do this:

-I select a line in the interval selected with has a chinese app inside. For example, this line:
<public type="drawable" name="mz_stat_sys_juhuasuan" id="0x7f0202ab" />

And I substitute "mz_stat_sys_juhuasuan" for "mz_stat_sys_telegram" (yes, the same name as the icon)
Result: <public type="drawable" name="mz_stat_sys_telegram" id="0x7f0202ab" />

We shouldnt choose lines where we have a non-chinese app inside, only we modify chinese ones. That is the idea.


After this, you need to remember the "id" to the next step. In my case was "0x7f0202ab". 
Write somewhere because you will need it.





-3
Now it comes the most tedious part.
Go to SystemUI/smali/com/android/systemui/statusbar/phone/MeizuCustomizedIcons$1.smali

You are going to see a file in smali code. It may look so weird at first but is very simple what
we have to do.

You have to searh the previous "id" we have written somewhere in this file.

In the example I'm doing, if I search this id: 0x7f0202ab I can see the following lines:

.line 81
    const-string v0, "com.taobao.ju.android"

    const v1, 0x7f0202ab

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/android/systemui/statusbar/phone/MeizuCustomizedIcons$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;


Now simply change "com.taobao.ju.android" to the activity of the app you are porting. In my case is:

"org.telegram.messenger".

So it will be like this:


.line 81
    const-string v0, "org.telegram.messenger"

    const v1, 0x7f0202ab

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/android/systemui/statusbar/phone/MeizuCustomizedIcons$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;






And thats it. 
Remember that to modify a file you have to click on the pencil at the left, edit the file, go to the end of the page, add a title and a comment (what you want) and click on
"propose changes". I will revise it an accept it as soon as I can.

When some apps are included or when you request to me, I will recompile and publish it to the XDA thread.
Also you can recompile yourself if you want, I will put all the necesary tools to compile, recompile, edit,
extract images, .dat files... in tool folder. But only if you want to do it by yourself or to learn. I will 
uploaded it done.












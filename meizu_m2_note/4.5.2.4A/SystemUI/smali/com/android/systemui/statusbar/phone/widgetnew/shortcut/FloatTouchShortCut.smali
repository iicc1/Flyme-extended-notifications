.class public Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/FloatTouchShortCut;
.super Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/BaseShortCut;
.source "FloatTouchShortCut.java"


# instance fields
.field private floatTouch:Lcom/android/systemui/floattouch/FloatTouch;

.field private isOn:Z

.field private isUserOn:Z

.field private mFSDObserver:Landroid/database/ContentObserver;

.field private mHelpDialog:Landroid/app/AlertDialog;

.field private mOldOrientation:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 35
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/BaseShortCut;-><init>(Landroid/content/Context;)V

    .line 57
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/FloatTouchShortCut;->isUserOn:Z

    .line 196
    new-instance v0, Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/FloatTouchShortCut$5;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/FloatTouchShortCut$5;-><init>(Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/FloatTouchShortCut;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/FloatTouchShortCut;->mFSDObserver:Landroid/database/ContentObserver;

    .line 261
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/FloatTouchShortCut;->mOldOrientation:I

    .line 36
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/FloatTouchShortCut;->init()V

    .line 37
    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/FloatTouchShortCut;)Landroid/app/AlertDialog;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/FloatTouchShortCut;

    .prologue
    .line 28
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/FloatTouchShortCut;->mHelpDialog:Landroid/app/AlertDialog;

    return-object v0
.end method

.method static synthetic access$002(Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/FloatTouchShortCut;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/FloatTouchShortCut;
    .param p1, "x1"    # Landroid/app/AlertDialog;

    .prologue
    .line 28
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/FloatTouchShortCut;->mHelpDialog:Landroid/app/AlertDialog;

    return-object p1
.end method

.method static synthetic access$100(Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/FloatTouchShortCut;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/FloatTouchShortCut;

    .prologue
    .line 28
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/FloatTouchShortCut;->notifiChange()V

    return-void
.end method

.method static synthetic access$202(Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/FloatTouchShortCut;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/FloatTouchShortCut;
    .param p1, "x1"    # Z

    .prologue
    .line 28
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/FloatTouchShortCut;->isUserOn:Z

    return p1
.end method

.method static synthetic access$300(Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/FloatTouchShortCut;)Landroid/database/ContentObserver;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/FloatTouchShortCut;

    .prologue
    .line 28
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/FloatTouchShortCut;->mFSDObserver:Landroid/database/ContentObserver;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/FloatTouchShortCut;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/FloatTouchShortCut;

    .prologue
    .line 28
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/FloatTouchShortCut;->isOn:Z

    return v0
.end method

.method static synthetic access$402(Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/FloatTouchShortCut;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/FloatTouchShortCut;
    .param p1, "x1"    # Z

    .prologue
    .line 28
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/FloatTouchShortCut;->isOn:Z

    return p1
.end method

.method static synthetic access$500(Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/FloatTouchShortCut;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/FloatTouchShortCut;

    .prologue
    .line 28
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/FloatTouchShortCut;->changeFloatTouch()V

    return-void
.end method

.method static synthetic access$600(Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/FloatTouchShortCut;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/FloatTouchShortCut;

    .prologue
    .line 28
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/FloatTouchShortCut;->onSwitchChange()V

    return-void
.end method

.method static synthetic access$700(Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/FloatTouchShortCut;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/FloatTouchShortCut;

    .prologue
    .line 28
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/FloatTouchShortCut;->onSettingsChange()V

    return-void
.end method

.method private changeFloatTouch()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 233
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/FloatTouchShortCut;->isOn:Z

    if-eqz v1, :cond_3

    .line 234
    sget-object v1, Lcom/android/systemui/floattouch/FloatTouch;->floatTouch:Lcom/android/systemui/floattouch/FloatTouch;

    if-eqz v1, :cond_0

    .line 235
    const-string v1, "flag_change_SmartTouch"

    const-string v2, "error : smart bar should close"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 236
    sget-object v1, Lcom/android/systemui/floattouch/FloatTouch;->floatTouch:Lcom/android/systemui/floattouch/FloatTouch;

    invoke-virtual {v1}, Lcom/android/systemui/floattouch/FloatTouch;->destroy()V

    .line 237
    sput-object v5, Lcom/android/systemui/floattouch/FloatTouch;->floatTouch:Lcom/android/systemui/floattouch/FloatTouch;

    .line 240
    :cond_0
    const-string v1, "flag_change_SmartTouch"

    const-string v2, "state change open "

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 241
    new-instance v1, Lcom/android/systemui/floattouch/FloatTouch;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/FloatTouchShortCut;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/android/systemui/floattouch/FloatTouch;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/FloatTouchShortCut;->floatTouch:Lcom/android/systemui/floattouch/FloatTouch;

    .line 242
    iget v1, p0, Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/FloatTouchShortCut;->mOldOrientation:I

    if-eq v1, v4, :cond_1

    iget v1, p0, Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/FloatTouchShortCut;->mOldOrientation:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_1

    .line 243
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/FloatTouchShortCut;->floatTouch:Lcom/android/systemui/floattouch/FloatTouch;

    invoke-virtual {v1}, Lcom/android/systemui/floattouch/FloatTouch;->toGone()V

    .line 247
    :cond_1
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/FloatTouchShortCut;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "floattouch"

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 248
    .local v0, "floattouch":Landroid/content/SharedPreferences;
    const-string v1, "firsthelp"

    invoke-interface {v0, v1, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 249
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "firsthelp"

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 259
    .end local v0    # "floattouch":Landroid/content/SharedPreferences;
    :cond_2
    :goto_0
    return-void

    .line 253
    :cond_3
    const-string v1, "flag_change_SmartTouch"

    const-string v2, "state change close "

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 254
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/FloatTouchShortCut;->floatTouch:Lcom/android/systemui/floattouch/FloatTouch;

    if-eqz v1, :cond_2

    .line 255
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/FloatTouchShortCut;->floatTouch:Lcom/android/systemui/floattouch/FloatTouch;

    invoke-virtual {v1}, Lcom/android/systemui/floattouch/FloatTouch;->destroy()V

    .line 256
    iput-object v5, p0, Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/FloatTouchShortCut;->floatTouch:Lcom/android/systemui/floattouch/FloatTouch;

    goto :goto_0
.end method

.method private init()V
    .locals 6

    .prologue
    const/4 v5, -0x2

    const/4 v2, 0x0

    .line 171
    const-string v3, "mz_smart_touch_change"

    invoke-static {v3}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 172
    .local v0, "fsdUri":Landroid/net/Uri;
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/FloatTouchShortCut;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/FloatTouchShortCut;->mFSDObserver:Landroid/database/ContentObserver;

    invoke-virtual {v3, v0, v2, v4, v5}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 173
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/FloatTouchShortCut;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "mz_smart_touch_switch"

    invoke-static {v3, v4, v2, v5}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v3

    if-eqz v3, :cond_0

    const/4 v2, 0x1

    :cond_0
    iput-boolean v2, p0, Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/FloatTouchShortCut;->isOn:Z

    .line 174
    iget-boolean v2, p0, Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/FloatTouchShortCut;->isOn:Z

    iput-boolean v2, p0, Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/FloatTouchShortCut;->isUserOn:Z

    .line 175
    const-string v2, "flag_change_SmartTouch"

    const-string v3, "init"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 176
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/FloatTouchShortCut;->changeFloatTouch()V

    .line 178
    new-instance v1, Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/FloatTouchShortCut$4;

    invoke-direct {v1, p0, v0}, Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/FloatTouchShortCut$4;-><init>(Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/FloatTouchShortCut;Landroid/net/Uri;)V

    .line 193
    .local v1, "receiver":Landroid/content/BroadcastReceiver;
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/FloatTouchShortCut;->getContext()Landroid/content/Context;

    move-result-object v2

    new-instance v3, Landroid/content/IntentFilter;

    const-string v4, "android.intent.action.USER_SWITCHED"

    invoke-direct {v3, v4}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 194
    return-void
.end method

.method private final notifiChange()V
    .locals 6

    .prologue
    const/4 v0, 0x0

    const/4 v5, -0x2

    .line 226
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/FloatTouchShortCut;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "mz_smart_touch_change"

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/FloatTouchShortCut;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "mz_smart_touch_change"

    invoke-static {v3, v4, v0, v5}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v3

    if-nez v3, :cond_0

    const/4 v0, 0x1

    :cond_0
    invoke-static {v1, v2, v0, v5}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 230
    return-void
.end method

.method private onSettingsChange()V
    .locals 1

    .prologue
    .line 220
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/FloatTouchShortCut;->floatTouch:Lcom/android/systemui/floattouch/FloatTouch;

    if-eqz v0, :cond_0

    .line 221
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/FloatTouchShortCut;->floatTouch:Lcom/android/systemui/floattouch/FloatTouch;

    invoke-virtual {v0}, Lcom/android/systemui/floattouch/FloatTouch;->onSettingsChange()V

    .line 223
    :cond_0
    return-void
.end method

.method private onSwitchChange()V
    .locals 2

    .prologue
    .line 212
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/FloatTouchShortCut;->isOn:Z

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/FloatTouchShortCut;->isUserOn:Z

    .line 213
    const-string v0, "flag_change_SmartTouch"

    const-string v1, "on database change"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 214
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/FloatTouchShortCut;->changeFloatTouch()V

    .line 215
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/FloatTouchShortCut;->updateViews()V

    .line 216
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/FloatTouchShortCut;->onStateChange()V

    .line 217
    return-void
.end method


# virtual methods
.method public getTag()Ljava/lang/String;
    .locals 1

    .prologue
    .line 41
    const-string v0, "FloatTouchShortCut"

    return-object v0
.end method

.method protected onClickDescriptionArea(Landroid/view/View;)V
    .locals 0
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 150
    return-void
.end method

.method protected onClickIcon(Landroid/view/View;)V
    .locals 10
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v9, 0x0

    const/4 v8, -0x2

    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 63
    invoke-super {p0, p1}, Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/BaseShortCut;->onClickIcon(Landroid/view/View;)V

    .line 64
    const-string v6, "flag_change_SmartTouch"

    const-string v7, "onClick "

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 65
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/FloatTouchShortCut;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "mz_smart_touch_switch"

    invoke-static {v6, v7, v5, v8}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v6

    if-eqz v6, :cond_2

    move v3, v4

    .line 66
    .local v3, "isOn":Z
    :goto_0
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/FloatTouchShortCut;->getContext()Landroid/content/Context;

    move-result-object v6

    const-string v7, "floattouch"

    invoke-virtual {v6, v7, v5}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 68
    .local v2, "floattouch":Landroid/content/SharedPreferences;
    if-nez v3, :cond_0

    const-string v6, "firsthelp"

    invoke-interface {v2, v6, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v6

    if-nez v6, :cond_4

    .line 70
    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/FloatTouchShortCut;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "mz_smart_touch_switch"

    if-nez v3, :cond_3

    :goto_1
    invoke-static {v6, v7, v4, v8}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 71
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/FloatTouchShortCut;->notifiChange()V

    .line 72
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/FloatTouchShortCut;->updateViews()V

    .line 145
    :cond_1
    :goto_2
    return-void

    .end local v2    # "floattouch":Landroid/content/SharedPreferences;
    .end local v3    # "isOn":Z
    :cond_2
    move v3, v5

    .line 65
    goto :goto_0

    .restart local v2    # "floattouch":Landroid/content/SharedPreferences;
    .restart local v3    # "isOn":Z
    :cond_3
    move v4, v5

    .line 70
    goto :goto_1

    .line 75
    :cond_4
    iget-boolean v6, p0, Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/FloatTouchShortCut;->isUserOn:Z

    if-nez v6, :cond_6

    .line 77
    iput-boolean v4, p0, Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/FloatTouchShortCut;->isUserOn:Z

    .line 78
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/FloatTouchShortCut;->updateViews()V

    .line 80
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/FloatTouchShortCut;->mHelpDialog:Landroid/app/AlertDialog;

    if-eqz v4, :cond_5

    .line 81
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/FloatTouchShortCut;->getTag()Ljava/lang/String;

    move-result-object v4

    const-string v6, "should always be null"

    invoke-static {v4, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 82
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/FloatTouchShortCut;->mHelpDialog:Landroid/app/AlertDialog;

    invoke-virtual {v4}, Landroid/app/AlertDialog;->dismiss()V

    .line 85
    :cond_5
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/FloatTouchShortCut;->getContext()Landroid/content/Context;

    move-result-object v4

    const/4 v6, 0x5

    invoke-direct {v0, v4, v6}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    .line 86
    .local v0, "builder":Landroid/app/AlertDialog$Builder;
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/FloatTouchShortCut;->getContext()Landroid/content/Context;

    move-result-object v4

    const v6, 0x7f040015

    invoke-static {v4, v6, v9}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 87
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/FloatTouchShortCut;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v6, 0x7f0b0007

    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    new-instance v6, Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/FloatTouchShortCut$1;

    invoke-direct {v6, p0, v2}, Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/FloatTouchShortCut$1;-><init>(Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/FloatTouchShortCut;Landroid/content/SharedPreferences;)V

    invoke-virtual {v0, v4, v6}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 105
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/FloatTouchShortCut;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v6, 0x7f0b0006

    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    new-instance v6, Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/FloatTouchShortCut$2;

    invoke-direct {v6, p0, v2}, Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/FloatTouchShortCut$2;-><init>(Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/FloatTouchShortCut;Landroid/content/SharedPreferences;)V

    invoke-virtual {v0, v4, v6}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 118
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/FloatTouchShortCut;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    .line 119
    .local v1, "dm":Landroid/util/DisplayMetrics;
    iget v4, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v6, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-static {v4, v6}, Ljava/lang/Math;->max(II)I

    move-result v4

    invoke-virtual {v0, v4}, Landroid/app/AlertDialog$Builder;->setMaxHeight(I)Landroid/app/AlertDialog$Builder;

    .line 120
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v4

    iput-object v4, p0, Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/FloatTouchShortCut;->mHelpDialog:Landroid/app/AlertDialog;

    .line 121
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/FloatTouchShortCut;->mHelpDialog:Landroid/app/AlertDialog;

    invoke-virtual {v4, v5}, Landroid/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    .line 122
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/FloatTouchShortCut;->mHelpDialog:Landroid/app/AlertDialog;

    invoke-virtual {v4}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v4

    const/16 v5, 0x7d8

    invoke-virtual {v4, v5}, Landroid/view/Window;->setType(I)V

    .line 123
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/FloatTouchShortCut;->mHelpDialog:Landroid/app/AlertDialog;

    new-instance v5, Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/FloatTouchShortCut$3;

    invoke-direct {v5, p0}, Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/FloatTouchShortCut$3;-><init>(Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/FloatTouchShortCut;)V

    invoke-virtual {v4, v5}, Landroid/app/AlertDialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 132
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/FloatTouchShortCut;->mHelpDialog:Landroid/app/AlertDialog;

    invoke-virtual {v4}, Landroid/app/AlertDialog;->show()V

    goto/16 :goto_2

    .line 136
    .end local v0    # "builder":Landroid/app/AlertDialog$Builder;
    .end local v1    # "dm":Landroid/util/DisplayMetrics;
    :cond_6
    iput-boolean v5, p0, Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/FloatTouchShortCut;->isUserOn:Z

    .line 137
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/FloatTouchShortCut;->updateViews()V

    .line 138
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/FloatTouchShortCut;->mHelpDialog:Landroid/app/AlertDialog;

    if-eqz v4, :cond_1

    .line 139
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/FloatTouchShortCut;->mHelpDialog:Landroid/app/AlertDialog;

    invoke-virtual {v4}, Landroid/app/AlertDialog;->dismiss()V

    .line 140
    iput-object v9, p0, Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/FloatTouchShortCut;->mHelpDialog:Landroid/app/AlertDialog;

    goto/16 :goto_2
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 3
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 265
    invoke-super {p0, p1}, Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/BaseShortCut;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 266
    iget v1, p0, Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/FloatTouchShortCut;->mOldOrientation:I

    iget v2, p1, Landroid/content/res/Configuration;->orientation:I

    if-eq v1, v2, :cond_0

    .line 267
    iget v1, p1, Landroid/content/res/Configuration;->orientation:I

    iput v1, p0, Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/FloatTouchShortCut;->mOldOrientation:I

    .line 268
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/FloatTouchShortCut;->floatTouch:Lcom/android/systemui/floattouch/FloatTouch;

    if-eqz v1, :cond_0

    .line 269
    iget v1, p0, Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/FloatTouchShortCut;->mOldOrientation:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    .line 270
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/FloatTouchShortCut;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "keyguard"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/KeyguardManager;

    .line 271
    .local v0, "km":Landroid/app/KeyguardManager;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/KeyguardManager;->isKeyguardLocked()Z

    move-result v1

    if-nez v1, :cond_0

    .line 272
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/FloatTouchShortCut;->floatTouch:Lcom/android/systemui/floattouch/FloatTouch;

    invoke-virtual {v1}, Lcom/android/systemui/floattouch/FloatTouch;->toVisible()V

    .line 279
    .end local v0    # "km":Landroid/app/KeyguardManager;
    :cond_0
    :goto_0
    return-void

    .line 275
    :cond_1
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/FloatTouchShortCut;->floatTouch:Lcom/android/systemui/floattouch/FloatTouch;

    invoke-virtual {v1}, Lcom/android/systemui/floattouch/FloatTouch;->toGone()V

    goto :goto_0
.end method

.method public onCreateView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 46
    invoke-super {p0, p1, p2, p3}, Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/BaseShortCut;->onCreateView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    .line 48
    const v1, 0x7f04006d

    const v2, 0x7f0200c3

    invoke-virtual {p0, v1, v2, p3}, Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/FloatTouchShortCut;->createViewFromResource(IILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 50
    .local v0, "v":Landroid/view/View;
    const v1, 0x7f0b0004

    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/FloatTouchShortCut;->setDescriptionLocaleStringFromRes(I)V

    .line 52
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/FloatTouchShortCut;->updateViews()V

    .line 53
    return-object v0
.end method

.method public onStateChange()V
    .locals 3

    .prologue
    .line 163
    invoke-super {p0}, Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/BaseShortCut;->onStateChange()V

    .line 167
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/FloatTouchShortCut;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/FloatTouchShortCut;->getTag()Ljava/lang/String;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/FloatTouchShortCut;->isUserOn:Z

    invoke-static {v0, v1, v2}, Lcom/android/systemui/SystemUIMobEventUtils;->collectOnOffStateOfShortCut(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 168
    return-void
.end method

.method public updateViews()V
    .locals 1

    .prologue
    .line 154
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/FloatTouchShortCut;->isUserOn:Z

    if-eqz v0, :cond_0

    .line 155
    const v0, 0x3f4ccccd    # 0.8f

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/FloatTouchShortCut;->setViewAlpha(F)V

    .line 159
    :goto_0
    return-void

    .line 157
    :cond_0
    const v0, 0x3e4ccccd    # 0.2f

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/FloatTouchShortCut;->setViewAlpha(F)V

    goto :goto_0
.end method

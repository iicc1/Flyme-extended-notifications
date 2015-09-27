.class public Lcom/android/systemui/statusbar/phone/KeyguardTouchDelegate;
.super Ljava/lang/Object;
.source "KeyguardTouchDelegate.java"


# static fields
.field private static sInstance:Lcom/android/systemui/statusbar/phone/KeyguardTouchDelegate;


# instance fields
.field private final mKeyguardConnection:Landroid/content/ServiceConnection;

.field private volatile mService:Lcom/android/internal/policy/IKeyguardService;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    new-instance v1, Lcom/android/systemui/statusbar/phone/KeyguardTouchDelegate$1;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/phone/KeyguardTouchDelegate$1;-><init>(Lcom/android/systemui/statusbar/phone/KeyguardTouchDelegate;)V

    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/KeyguardTouchDelegate;->mKeyguardConnection:Landroid/content/ServiceConnection;

    .line 69
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 70
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "com.android.keyguard"

    const-string v2, "com.android.keyguard.KeyguardService"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 71
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/KeyguardTouchDelegate;->mKeyguardConnection:Landroid/content/ServiceConnection;

    const/4 v2, 0x1

    sget-object v3, Landroid/os/UserHandle;->OWNER:Landroid/os/UserHandle;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/content/Context;->bindServiceAsUser(Landroid/content/Intent;Landroid/content/ServiceConnection;ILandroid/os/UserHandle;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 77
    :cond_0
    return-void
.end method

.method static synthetic access$002(Lcom/android/systemui/statusbar/phone/KeyguardTouchDelegate;Lcom/android/internal/policy/IKeyguardService;)Lcom/android/internal/policy/IKeyguardService;
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/KeyguardTouchDelegate;
    .param p1, "x1"    # Lcom/android/internal/policy/IKeyguardService;

    .prologue
    .line 39
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/KeyguardTouchDelegate;->mService:Lcom/android/internal/policy/IKeyguardService;

    return-object p1
.end method

.method static synthetic access$102(Lcom/android/systemui/statusbar/phone/KeyguardTouchDelegate;)Lcom/android/systemui/statusbar/phone/KeyguardTouchDelegate;
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/KeyguardTouchDelegate;

    .prologue
    .line 39
    sput-object p0, Lcom/android/systemui/statusbar/phone/KeyguardTouchDelegate;->sInstance:Lcom/android/systemui/statusbar/phone/KeyguardTouchDelegate;

    return-object p0
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/android/systemui/statusbar/phone/KeyguardTouchDelegate;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 80
    sget-object v0, Lcom/android/systemui/statusbar/phone/KeyguardTouchDelegate;->sInstance:Lcom/android/systemui/statusbar/phone/KeyguardTouchDelegate;

    .line 81
    .local v0, "instance":Lcom/android/systemui/statusbar/phone/KeyguardTouchDelegate;
    if-nez v0, :cond_0

    .line 82
    new-instance v0, Lcom/android/systemui/statusbar/phone/KeyguardTouchDelegate;

    .end local v0    # "instance":Lcom/android/systemui/statusbar/phone/KeyguardTouchDelegate;
    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/phone/KeyguardTouchDelegate;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/android/systemui/statusbar/phone/KeyguardTouchDelegate;->sInstance:Lcom/android/systemui/statusbar/phone/KeyguardTouchDelegate;

    .line 84
    .restart local v0    # "instance":Lcom/android/systemui/statusbar/phone/KeyguardTouchDelegate;
    :cond_0
    return-object v0
.end method


# virtual methods
.method public dismiss()V
    .locals 4

    .prologue
    .line 178
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/KeyguardTouchDelegate;->mService:Lcom/android/internal/policy/IKeyguardService;

    .line 179
    .local v1, "service":Lcom/android/internal/policy/IKeyguardService;
    if-eqz v1, :cond_0

    .line 181
    :try_start_0
    invoke-interface {v1}, Lcom/android/internal/policy/IKeyguardService;->dismiss()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 189
    :goto_0
    return-void

    .line 182
    :catch_0
    move-exception v0

    .line 184
    .local v0, "e":Landroid/os/RemoteException;
    const-string v2, "KeyguardTouchDelegate"

    const-string v3, "RemoteException dismissing keyguard!"

    invoke-static {v2, v3, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 187
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    const-string v2, "KeyguardTouchDelegate"

    const-string v3, "dismiss(): NO SERVICE!"

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public dispatch(Landroid/view/MotionEvent;)Z
    .locals 3
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 103
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardTouchDelegate;->mService:Lcom/android/internal/policy/IKeyguardService;

    .line 104
    .local v0, "service":Lcom/android/internal/policy/IKeyguardService;
    if-eqz v0, :cond_0

    .line 105
    const/4 v1, 0x1

    .line 116
    :goto_0
    return v1

    .line 114
    :cond_0
    const-string v1, "KeyguardTouchDelegate"

    const-string v2, "dispatch(event): NO SERVICE!"

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 116
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isInputRestricted()Z
    .locals 3

    .prologue
    .line 120
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardTouchDelegate;->mService:Lcom/android/internal/policy/IKeyguardService;

    .line 121
    .local v0, "service":Lcom/android/internal/policy/IKeyguardService;
    if-eqz v0, :cond_0

    .line 122
    const/4 v1, 0x1

    .line 131
    :goto_0
    return v1

    .line 129
    :cond_0
    const-string v1, "KeyguardTouchDelegate"

    const-string v2, "isInputRestricted(): NO SERVICE!"

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 131
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isSecure()Z
    .locals 3

    .prologue
    .line 88
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardTouchDelegate;->mService:Lcom/android/internal/policy/IKeyguardService;

    .line 89
    .local v0, "service":Lcom/android/internal/policy/IKeyguardService;
    if-eqz v0, :cond_0

    .line 90
    const/4 v1, 0x1

    .line 99
    :goto_0
    return v1

    .line 97
    :cond_0
    const-string v1, "KeyguardTouchDelegate"

    const-string v2, "isSecure(): NO SERVICE!"

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 99
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isShowingAndNotHidden()Z
    .locals 3

    .prologue
    .line 135
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardTouchDelegate;->mService:Lcom/android/internal/policy/IKeyguardService;

    .line 136
    .local v0, "service":Lcom/android/internal/policy/IKeyguardService;
    if-eqz v0, :cond_0

    .line 142
    const/4 v1, 0x1

    .line 146
    :goto_0
    return v1

    .line 144
    :cond_0
    const-string v1, "KeyguardTouchDelegate"

    const-string v2, "isShowingAndNotHidden(): NO SERVICE!"

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 146
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public launchCamera()V
    .locals 3

    .prologue
    .line 164
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardTouchDelegate;->mService:Lcom/android/internal/policy/IKeyguardService;

    .line 165
    .local v0, "service":Lcom/android/internal/policy/IKeyguardService;
    if-eqz v0, :cond_0

    .line 175
    :goto_0
    return-void

    .line 173
    :cond_0
    const-string v1, "KeyguardTouchDelegate"

    const-string v2, "launchCamera(): NO SERVICE!"

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public showAssistant()V
    .locals 3

    .prologue
    .line 150
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardTouchDelegate;->mService:Lcom/android/internal/policy/IKeyguardService;

    .line 151
    .local v0, "service":Lcom/android/internal/policy/IKeyguardService;
    if-eqz v0, :cond_0

    .line 161
    :goto_0
    return-void

    .line 159
    :cond_0
    const-string v1, "KeyguardTouchDelegate"

    const-string v2, "showAssistant(event): NO SERVICE!"

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

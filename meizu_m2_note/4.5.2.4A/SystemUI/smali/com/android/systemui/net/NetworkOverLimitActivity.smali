.class public Lcom/android/systemui/net/NetworkOverLimitActivity;
.super Landroid/app/Activity;
.source "NetworkOverLimitActivity.java"


# instance fields
.field private mCurPolicy:Landroid/net/NetworkPolicy;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 50
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/net/NetworkOverLimitActivity;Landroid/net/NetworkTemplate;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/net/NetworkOverLimitActivity;
    .param p1, "x1"    # Landroid/net/NetworkTemplate;

    .prologue
    .line 50
    invoke-direct {p0, p1}, Lcom/android/systemui/net/NetworkOverLimitActivity;->snoozeLimitPolicy(Landroid/net/NetworkTemplate;)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/systemui/net/NetworkOverLimitActivity;Landroid/net/NetworkTemplate;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/net/NetworkOverLimitActivity;
    .param p1, "x1"    # Landroid/net/NetworkTemplate;

    .prologue
    .line 50
    invoke-direct {p0, p1}, Lcom/android/systemui/net/NetworkOverLimitActivity;->setPolicyWarningDisable(Landroid/net/NetworkTemplate;)V

    return-void
.end method

.method private getLimitBytesString(J)Ljava/lang/String;
    .locals 3
    .param p1, "data"    # J

    .prologue
    .line 107
    const/16 v0, 0x14

    ushr-long/2addr p1, v0

    .line 108
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "MB"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private setPolicyWarningDisable(Landroid/net/NetworkTemplate;)V
    .locals 12
    .param p1, "template"    # Landroid/net/NetworkTemplate;

    .prologue
    const-wide/16 v10, -0x1

    .line 123
    const-string v7, "netpolicy"

    invoke-static {v7}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v7

    invoke-static {v7}, Landroid/net/INetworkPolicyManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/net/INetworkPolicyManager;

    move-result-object v5

    .line 129
    .local v5, "policyService":Landroid/net/INetworkPolicyManager;
    :try_start_0
    invoke-interface {v5}, Landroid/net/INetworkPolicyManager;->getNetworkPolicies()[Landroid/net/NetworkPolicy;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v6

    .line 134
    .local v6, "policysTmp":[Landroid/net/NetworkPolicy;
    move-object v0, v6

    .local v0, "arr$":[Landroid/net/NetworkPolicy;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v3, :cond_1

    aget-object v4, v0, v2

    .line 135
    .local v4, "policy":Landroid/net/NetworkPolicy;
    iget-object v7, v4, Landroid/net/NetworkPolicy;->template:Landroid/net/NetworkTemplate;

    iget-object v8, p0, Lcom/android/systemui/net/NetworkOverLimitActivity;->mCurPolicy:Landroid/net/NetworkPolicy;

    iget-object v8, v8, Landroid/net/NetworkPolicy;->template:Landroid/net/NetworkTemplate;

    invoke-virtual {v7, v8}, Landroid/net/NetworkTemplate;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 136
    iput-wide v10, v4, Landroid/net/NetworkPolicy;->warningBytes:J

    .line 137
    iput-wide v10, v4, Landroid/net/NetworkPolicy;->lastWarningSnooze:J

    .line 134
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 130
    .end local v0    # "arr$":[Landroid/net/NetworkPolicy;
    .end local v2    # "i$":I
    .end local v3    # "len$":I
    .end local v4    # "policy":Landroid/net/NetworkPolicy;
    .end local v6    # "policysTmp":[Landroid/net/NetworkPolicy;
    :catch_0
    move-exception v1

    .line 131
    .local v1, "e":Landroid/os/RemoteException;
    new-instance v7, Ljava/lang/RuntimeException;

    const-string v8, "problem writing policies"

    invoke-direct {v7, v8, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v7

    .line 142
    .end local v1    # "e":Landroid/os/RemoteException;
    .restart local v0    # "arr$":[Landroid/net/NetworkPolicy;
    .restart local v2    # "i$":I
    .restart local v3    # "len$":I
    .restart local v6    # "policysTmp":[Landroid/net/NetworkPolicy;
    :cond_1
    :try_start_1
    invoke-interface {v5, v6}, Landroid/net/INetworkPolicyManager;->setNetworkPolicies([Landroid/net/NetworkPolicy;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    .line 147
    return-void

    .line 143
    :catch_1
    move-exception v1

    .line 144
    .restart local v1    # "e":Landroid/os/RemoteException;
    new-instance v7, Ljava/lang/RuntimeException;

    const-string v8, "problem writing policies"

    invoke-direct {v7, v8, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v7
.end method

.method private snoozeLimitPolicy(Landroid/net/NetworkTemplate;)V
    .locals 4
    .param p1, "template"    # Landroid/net/NetworkTemplate;

    .prologue
    .line 113
    const-string v2, "netpolicy"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/net/INetworkPolicyManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/net/INetworkPolicyManager;

    move-result-object v1

    .line 116
    .local v1, "policyService":Landroid/net/INetworkPolicyManager;
    :try_start_0
    invoke-interface {v1, p1}, Landroid/net/INetworkPolicyManager;->snoozeLimit(Landroid/net/NetworkTemplate;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 120
    :goto_0
    return-void

    .line 117
    :catch_0
    move-exception v0

    .line 118
    .local v0, "e":Landroid/os/RemoteException;
    const-string v2, "NetworkOverLimitActivity"

    const-string v3, "problem snoozing network policy"

    invoke-static {v2, v3, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 11
    .param p1, "icicle"    # Landroid/os/Bundle;

    .prologue
    const-wide/16 v6, 0x0

    const v10, 0x7f0b0150

    const v9, 0xa020152

    .line 58
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 60
    invoke-virtual {p0}, Lcom/android/systemui/net/NetworkOverLimitActivity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    const-string v8, "android.net.NETWORK_TEMPLATE"

    invoke-virtual {v3, v8}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Landroid/net/NetworkTemplate;

    .line 61
    .local v2, "template":Landroid/net/NetworkTemplate;
    invoke-virtual {p0}, Lcom/android/systemui/net/NetworkOverLimitActivity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    const-string v8, "policy"

    invoke-virtual {v3, v8}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v3

    check-cast v3, Landroid/net/NetworkPolicy;

    iput-object v3, p0, Lcom/android/systemui/net/NetworkOverLimitActivity;->mCurPolicy:Landroid/net/NetworkPolicy;

    .line 63
    invoke-virtual {p0}, Lcom/android/systemui/net/NetworkOverLimitActivity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    const-string v8, "totalBytes"

    invoke-virtual {v3, v8, v6, v7}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v4

    .line 64
    .local v4, "totalBytes":J
    new-instance v0, Landroid/app/AlertDialog$Builder;

    const/4 v3, 0x5

    invoke-direct {v0, p0, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    .line 65
    .local v0, "builder":Landroid/app/AlertDialog$Builder;
    iget-object v3, p0, Lcom/android/systemui/net/NetworkOverLimitActivity;->mCurPolicy:Landroid/net/NetworkPolicy;

    invoke-virtual {v3, v4, v5}, Landroid/net/NetworkPolicy;->isOverLimit(J)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 66
    const v3, 0x7f0b0154

    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 67
    invoke-virtual {v0, v9}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    .line 68
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/android/systemui/net/NetworkOverLimitActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Lcom/android/systemui/net/NetworkOverLimitActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6, v4, v5}, Landroid/text/format/Formatter;->formatFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v6, " ,"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Lcom/android/systemui/net/NetworkOverLimitActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0b00b0

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 71
    const v3, 0x7f0b0152

    const/4 v6, 0x0

    invoke-virtual {v0, v3, v6}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 72
    const v3, 0x7f0b00b3

    new-instance v6, Lcom/android/systemui/net/NetworkOverLimitActivity$1;

    invoke-direct {v6, p0, v2}, Lcom/android/systemui/net/NetworkOverLimitActivity$1;-><init>(Lcom/android/systemui/net/NetworkOverLimitActivity;Landroid/net/NetworkTemplate;)V

    invoke-virtual {v0, v3, v6}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 95
    :goto_0
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    .line 96
    .local v1, "dialog":Landroid/app/Dialog;
    new-instance v3, Lcom/android/systemui/net/NetworkOverLimitActivity$3;

    invoke-direct {v3, p0}, Lcom/android/systemui/net/NetworkOverLimitActivity$3;-><init>(Lcom/android/systemui/net/NetworkOverLimitActivity;)V

    invoke-virtual {v1, v3}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 102
    invoke-virtual {v1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v3

    const/16 v6, 0x7d3

    invoke-virtual {v3, v6}, Landroid/view/Window;->setType(I)V

    .line 103
    invoke-virtual {v1}, Landroid/app/Dialog;->show()V

    .line 104
    return-void

    .line 79
    .end local v1    # "dialog":Landroid/app/Dialog;
    :cond_0
    const v3, 0x7f0b014f

    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 80
    invoke-virtual {v0, v9}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    .line 81
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/android/systemui/net/NetworkOverLimitActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    invoke-virtual {v8, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Lcom/android/systemui/net/NetworkOverLimitActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v8

    invoke-static {v8, v4, v5}, Landroid/text/format/Formatter;->formatFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v8, " "

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Lcom/android/systemui/net/NetworkOverLimitActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f0b0151

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v8, p0, Lcom/android/systemui/net/NetworkOverLimitActivity;->mCurPolicy:Landroid/net/NetworkPolicy;

    if-nez v8, :cond_1

    :goto_1
    invoke-direct {p0, v6, v7}, Lcom/android/systemui/net/NetworkOverLimitActivity;->getLimitBytesString(J)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 85
    const v3, 0x7f0b0155

    new-instance v6, Lcom/android/systemui/net/NetworkOverLimitActivity$2;

    invoke-direct {v6, p0, v2}, Lcom/android/systemui/net/NetworkOverLimitActivity$2;-><init>(Lcom/android/systemui/net/NetworkOverLimitActivity;Landroid/net/NetworkTemplate;)V

    invoke-virtual {v0, v3, v6}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    goto :goto_0

    .line 81
    :cond_1
    iget-object v6, p0, Lcom/android/systemui/net/NetworkOverLimitActivity;->mCurPolicy:Landroid/net/NetworkPolicy;

    iget-wide v6, v6, Landroid/net/NetworkPolicy;->limitBytes:J

    goto :goto_1
.end method

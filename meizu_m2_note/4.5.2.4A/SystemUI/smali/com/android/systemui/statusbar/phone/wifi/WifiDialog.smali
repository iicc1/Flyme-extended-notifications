.class public Lcom/android/systemui/statusbar/phone/wifi/WifiDialog;
.super Landroid/app/AlertDialog;
.source "WifiDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;
.implements Landroid/text/TextWatcher;
.implements Landroid/view/View$OnClickListener;
.implements Landroid/widget/AdapterView$OnItemSelectedListener;


# instance fields
.field public final edit:Z

.field listener1:Landroid/content/DialogInterface$OnClickListener;

.field private final mAccessPoint:Lcom/android/systemui/statusbar/phone/wifi/AccessPointItem;

.field private mCertInstallButton:Landroid/widget/Button;

.field private mContext:Landroid/content/Context;

.field private mEapMethod:Landroid/widget/Spinner;

.field private final mFilter:Landroid/content/IntentFilter;

.field private final mListener:Landroid/content/DialogInterface$OnClickListener;

.field private mPassword:Landroid/widget/TextView;

.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field private mRssiTextView:Landroid/widget/TextView;

.field private mSecurity:I

.field private mSsid:Landroid/widget/TextView;

.field private mView:Landroid/view/View;

.field private mWapiPskTypeSpinner:Landroid/widget/Spinner;

.field private mWifiManager:Landroid/net/wifi/WifiManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/content/DialogInterface$OnClickListener;Lcom/android/systemui/statusbar/phone/wifi/AccessPointItem;Z)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "listener"    # Landroid/content/DialogInterface$OnClickListener;
    .param p3, "accessPoint"    # Lcom/android/systemui/statusbar/phone/wifi/AccessPointItem;
    .param p4, "edit"    # Z

    .prologue
    .line 126
    const/4 v0, 0x5

    invoke-direct {p0, p1, v0}, Landroid/app/AlertDialog;-><init>(Landroid/content/Context;I)V

    .line 106
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/wifi/WifiDialog;->listener1:Landroid/content/DialogInterface$OnClickListener;

    .line 127
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/wifi/WifiDialog;->mContext:Landroid/content/Context;

    .line 128
    iput-boolean p4, p0, Lcom/android/systemui/statusbar/phone/wifi/WifiDialog;->edit:Z

    .line 129
    iput-object p2, p0, Lcom/android/systemui/statusbar/phone/wifi/WifiDialog;->mListener:Landroid/content/DialogInterface$OnClickListener;

    .line 130
    iput-object p3, p0, Lcom/android/systemui/statusbar/phone/wifi/WifiDialog;->mAccessPoint:Lcom/android/systemui/statusbar/phone/wifi/AccessPointItem;

    .line 131
    if-nez p3, :cond_1

    const/4 v0, 0x0

    :goto_0
    iput v0, p0, Lcom/android/systemui/statusbar/phone/wifi/WifiDialog;->mSecurity:I

    .line 132
    if-nez p3, :cond_0

    .line 136
    :cond_0
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/wifi/WifiDialog;->mFilter:Landroid/content/IntentFilter;

    .line 137
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/wifi/WifiDialog;->mFilter:Landroid/content/IntentFilter;

    const-string v1, "android.net.wifi.RSSI_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 138
    new-instance v0, Lcom/android/systemui/statusbar/phone/wifi/WifiDialog$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/phone/wifi/WifiDialog$1;-><init>(Lcom/android/systemui/statusbar/phone/wifi/WifiDialog;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/wifi/WifiDialog;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 159
    return-void

    .line 131
    :cond_1
    iget v0, p3, Lcom/android/systemui/statusbar/phone/wifi/AccessPointItem;->security:I

    goto :goto_0
.end method

.method static synthetic access$000(Lcom/android/systemui/statusbar/phone/wifi/WifiDialog;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/wifi/WifiDialog;

    .prologue
    .line 73
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/wifi/WifiDialog;->mRssiTextView:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/systemui/statusbar/phone/wifi/WifiDialog;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/wifi/WifiDialog;

    .prologue
    .line 73
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/wifi/WifiDialog;->mPassword:Landroid/widget/TextView;

    return-object v0
.end method

.method private addRow(Landroid/view/ViewGroup;ILjava/lang/String;)V
    .locals 4
    .param p1, "group"    # Landroid/view/ViewGroup;
    .param p2, "name"    # I
    .param p3, "value"    # Ljava/lang/String;

    .prologue
    .line 478
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/wifi/WifiDialog;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f040087

    const/4 v3, 0x0

    invoke-virtual {v1, v2, p1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 479
    .local v0, "row":Landroid/view/View;
    const v1, 0x7f0e0125

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-virtual {v1, p2}, Landroid/widget/TextView;->setText(I)V

    .line 480
    const v1, 0x7f0e019c

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-virtual {v1, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 481
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 482
    return-void
.end method

.method private addRow(Landroid/view/ViewGroup;ILjava/lang/String;Ljava/lang/String;)V
    .locals 5
    .param p1, "group"    # Landroid/view/ViewGroup;
    .param p2, "name"    # I
    .param p3, "value"    # Ljava/lang/String;
    .param p4, "str"    # Ljava/lang/String;

    .prologue
    const v4, 0x7f0e019c

    .line 484
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/wifi/WifiDialog;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f040087

    const/4 v3, 0x0

    invoke-virtual {v1, v2, p1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 485
    .local v0, "row":Landroid/view/View;
    const v1, 0x7f0e0125

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-virtual {v1, p2}, Landroid/widget/TextView;->setText(I)V

    .line 486
    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-virtual {v1, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 487
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 488
    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/wifi/WifiDialog;->mRssiTextView:Landroid/widget/TextView;

    .line 489
    return-void
.end method

.method public static prefixLen2IpAddress(I)Ljava/lang/String;
    .locals 6
    .param p0, "pre"    # I

    .prologue
    .line 298
    const/4 v0, 0x0

    .line 299
    .local v0, "ip":I
    if-lez p0, :cond_0

    const/16 v2, 0x20

    if-le p0, v2, :cond_1

    .line 300
    :cond_0
    const-string v1, "0.0.0.0"

    .line 308
    :goto_0
    return-object v1

    .line 302
    :cond_1
    const/4 v2, -0x1

    rsub-int/lit8 v3, p0, 0x20

    shl-int v0, v2, v3

    .line 303
    const-string v2, "%d.%d.%d.%d"

    const/4 v3, 0x4

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    shr-int/lit8 v5, v0, 0x18

    and-int/lit16 v5, v5, 0xff

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    shr-int/lit8 v5, v0, 0x10

    and-int/lit16 v5, v5, 0xff

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x2

    shr-int/lit8 v5, v0, 0x8

    and-int/lit16 v5, v5, 0xff

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x3

    shr-int/lit8 v5, v0, 0x0

    and-int/lit16 v5, v5, 0xff

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 308
    .local v1, "str":Ljava/lang/String;
    goto :goto_0
.end method

.method private showSecurityFields()V
    .locals 8

    .prologue
    const/4 v7, 0x5

    const v6, 0x7f0e0199

    const v5, 0x7f0e018f

    const/4 v4, 0x0

    const/16 v3, 0x8

    .line 531
    iget v1, p0, Lcom/android/systemui/statusbar/phone/wifi/WifiDialog;->mSecurity:I

    if-nez v1, :cond_1

    .line 532
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/wifi/WifiDialog;->mView:Landroid/view/View;

    invoke-virtual {v1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 621
    :cond_0
    :goto_0
    return-void

    .line 535
    :cond_1
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/wifi/WifiDialog;->mView:Landroid/view/View;

    invoke-virtual {v1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    .line 537
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/wifi/WifiDialog;->mPassword:Landroid/widget/TextView;

    if-nez v1, :cond_2

    .line 538
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/wifi/WifiDialog;->mView:Landroid/view/View;

    const v2, 0x7f0e0198

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/wifi/WifiDialog;->mPassword:Landroid/widget/TextView;

    .line 539
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/wifi/WifiDialog;->mPassword:Landroid/widget/TextView;

    invoke-virtual {v1, p0}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 540
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/wifi/WifiDialog;->mAccessPoint:Lcom/android/systemui/statusbar/phone/wifi/AccessPointItem;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/wifi/WifiDialog;->mAccessPoint:Lcom/android/systemui/statusbar/phone/wifi/AccessPointItem;

    iget v1, v1, Lcom/android/systemui/statusbar/phone/wifi/AccessPointItem;->networkId:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_2

    .line 541
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/wifi/WifiDialog;->mPassword:Landroid/widget/TextView;

    const v2, 0x7f0b0127

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setHint(I)V

    .line 545
    :cond_2
    iget v1, p0, Lcom/android/systemui/statusbar/phone/wifi/WifiDialog;->mSecurity:I

    const/4 v2, 0x4

    if-eq v1, v2, :cond_3

    .line 546
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/wifi/WifiDialog;->mView:Landroid/view/View;

    invoke-virtual {v1, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 551
    :goto_1
    iget v1, p0, Lcom/android/systemui/statusbar/phone/wifi/WifiDialog;->mSecurity:I

    if-eq v1, v7, :cond_4

    .line 552
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/wifi/WifiDialog;->mView:Landroid/view/View;

    const v2, 0x7f0e019a

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 568
    :goto_2
    iget v1, p0, Lcom/android/systemui/statusbar/phone/wifi/WifiDialog;->mSecurity:I

    const/4 v2, 0x3

    if-eq v1, v2, :cond_5

    .line 569
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/wifi/WifiDialog;->mView:Landroid/view/View;

    const v2, 0x7f0e0190

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 570
    iget v1, p0, Lcom/android/systemui/statusbar/phone/wifi/WifiDialog;->mSecurity:I

    if-eq v1, v7, :cond_0

    .line 571
    new-instance v1, Lcom/android/systemui/statusbar/phone/wifi/WifiDialog$3;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/phone/wifi/WifiDialog$3;-><init>(Lcom/android/systemui/statusbar/phone/wifi/WifiDialog;)V

    invoke-super {p0, v1}, Landroid/app/AlertDialog;->setOnShowListener(Landroid/content/DialogInterface$OnShowListener;)V

    goto :goto_0

    .line 548
    :cond_3
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/wifi/WifiDialog;->mView:Landroid/view/View;

    invoke-virtual {v1, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    .line 549
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/wifi/WifiDialog;->mView:Landroid/view/View;

    invoke-virtual {v1, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Spinner;

    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/wifi/WifiDialog;->mWapiPskTypeSpinner:Landroid/widget/Spinner;

    goto :goto_1

    .line 554
    :cond_4
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/wifi/WifiDialog;->mView:Landroid/view/View;

    invoke-virtual {v1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 555
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/wifi/WifiDialog;->mView:Landroid/view/View;

    const v2, 0x7f0e019a

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    .line 556
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/wifi/WifiDialog;->mView:Landroid/view/View;

    const v2, 0x7f0e019b

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/wifi/WifiDialog;->mCertInstallButton:Landroid/widget/Button;

    .line 557
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/wifi/WifiDialog;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 558
    .local v0, "context":Landroid/content/Context;
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/wifi/WifiDialog;->mCertInstallButton:Landroid/widget/Button;

    new-instance v2, Lcom/android/systemui/statusbar/phone/wifi/WifiDialog$2;

    invoke-direct {v2, p0, v0}, Lcom/android/systemui/statusbar/phone/wifi/WifiDialog$2;-><init>(Lcom/android/systemui/statusbar/phone/wifi/WifiDialog;Landroid/content/Context;)V

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_2

    .line 582
    .end local v0    # "context":Landroid/content/Context;
    :cond_5
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/wifi/WifiDialog;->mView:Landroid/view/View;

    const v2, 0x7f0e0190

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    .line 584
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/wifi/WifiDialog;->mEapMethod:Landroid/widget/Spinner;

    if-nez v1, :cond_0

    .line 585
    const-string v1, "StatusBar_WifiDialog"

    const-string v2, "statusbar wifi list do not surport eap method!!!"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method

.method private validate()V
    .locals 5

    .prologue
    const/16 v4, 0x8

    const/4 v3, 0x1

    const/4 v2, -0x1

    .line 493
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/wifi/WifiDialog;->mSsid:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/wifi/WifiDialog;->mSsid:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->length()I

    move-result v0

    if-eqz v0, :cond_4

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/wifi/WifiDialog;->mAccessPoint:Lcom/android/systemui/statusbar/phone/wifi/AccessPointItem;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/wifi/WifiDialog;->mAccessPoint:Lcom/android/systemui/statusbar/phone/wifi/AccessPointItem;

    iget v0, v0, Lcom/android/systemui/statusbar/phone/wifi/AccessPointItem;->networkId:I

    if-ne v0, v2, :cond_5

    :cond_1
    iget v0, p0, Lcom/android/systemui/statusbar/phone/wifi/WifiDialog;->mSecurity:I

    if-ne v0, v3, :cond_2

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/wifi/WifiDialog;->mPassword:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->length()I

    move-result v0

    if-eqz v0, :cond_4

    :cond_2
    iget v0, p0, Lcom/android/systemui/statusbar/phone/wifi/WifiDialog;->mSecurity:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_3

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/wifi/WifiDialog;->mPassword:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->length()I

    move-result v0

    if-lt v0, v4, :cond_4

    :cond_3
    iget v0, p0, Lcom/android/systemui/statusbar/phone/wifi/WifiDialog;->mSecurity:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_5

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/wifi/WifiDialog;->mPassword:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->length()I

    move-result v0

    if-ge v0, v4, :cond_5

    .line 498
    :cond_4
    invoke-virtual {p0, v2}, Lcom/android/systemui/statusbar/phone/wifi/WifiDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 502
    :goto_0
    return-void

    .line 500
    :cond_5
    invoke-virtual {p0, v2}, Lcom/android/systemui/statusbar/phone/wifi/WifiDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_0
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 0
    .param p1, "editable"    # Landroid/text/Editable;

    .prologue
    .line 518
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/wifi/WifiDialog;->validate()V

    .line 519
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "count"    # I
    .param p4, "after"    # I

    .prologue
    .line 515
    return-void
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 663
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 669
    invoke-super {p0, p1}, Landroid/app/AlertDialog;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    :goto_0
    return v0

    .line 665
    :pswitch_0
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/wifi/WifiDialog;->dismiss()V

    .line 667
    const/4 v0, 0x0

    goto :goto_0

    .line 663
    nop

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_0
    .end packed-switch
.end method

.method public getConfig()Landroid/net/wifi/WifiConfiguration;
    .locals 9

    .prologue
    const/4 v8, 0x2

    const/4 v7, -0x1

    const/4 v4, 0x1

    const/4 v6, 0x0

    const/16 v5, 0x22

    .line 162
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/wifi/WifiDialog;->mAccessPoint:Lcom/android/systemui/statusbar/phone/wifi/AccessPointItem;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/wifi/WifiDialog;->mAccessPoint:Lcom/android/systemui/statusbar/phone/wifi/AccessPointItem;

    iget v3, v3, Lcom/android/systemui/statusbar/phone/wifi/AccessPointItem;->networkId:I

    if-eq v3, v7, :cond_1

    iget-boolean v3, p0, Lcom/android/systemui/statusbar/phone/wifi/WifiDialog;->edit:Z

    if-nez v3, :cond_1

    .line 163
    const/4 v0, 0x0

    .line 292
    :cond_0
    :goto_0
    return-object v0

    .line 166
    :cond_1
    new-instance v0, Landroid/net/wifi/WifiConfiguration;

    invoke-direct {v0}, Landroid/net/wifi/WifiConfiguration;-><init>()V

    .line 168
    .local v0, "config":Landroid/net/wifi/WifiConfiguration;
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/wifi/WifiDialog;->mAccessPoint:Lcom/android/systemui/statusbar/phone/wifi/AccessPointItem;

    if-nez v3, :cond_2

    .line 169
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/wifi/WifiDialog;->mSsid:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/systemui/statusbar/phone/wifi/AccessPointItem;->convertToQuotedString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    .line 172
    iput-boolean v4, v0, Landroid/net/wifi/WifiConfiguration;->hiddenSSID:Z

    .line 181
    :goto_1
    iget v3, p0, Lcom/android/systemui/statusbar/phone/wifi/WifiDialog;->mSecurity:I

    packed-switch v3, :pswitch_data_0

    .line 292
    const/4 v0, 0x0

    goto :goto_0

    .line 173
    :cond_2
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/wifi/WifiDialog;->mAccessPoint:Lcom/android/systemui/statusbar/phone/wifi/AccessPointItem;

    iget v3, v3, Lcom/android/systemui/statusbar/phone/wifi/AccessPointItem;->networkId:I

    if-ne v3, v7, :cond_3

    .line 174
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/wifi/WifiDialog;->mAccessPoint:Lcom/android/systemui/statusbar/phone/wifi/AccessPointItem;

    iget-object v3, v3, Lcom/android/systemui/statusbar/phone/wifi/AccessPointItem;->ssid:Ljava/lang/String;

    invoke-static {v3}, Lcom/android/systemui/statusbar/phone/wifi/AccessPointItem;->convertToQuotedString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    .line 176
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/wifi/WifiDialog;->mAccessPoint:Lcom/android/systemui/statusbar/phone/wifi/AccessPointItem;

    iget-object v3, v3, Lcom/android/systemui/statusbar/phone/wifi/AccessPointItem;->hexssid:Ljava/lang/String;

    iput-object v3, v0, Landroid/net/wifi/WifiConfiguration;->HexSSID:Ljava/lang/String;

    goto :goto_1

    .line 178
    :cond_3
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/wifi/WifiDialog;->mAccessPoint:Lcom/android/systemui/statusbar/phone/wifi/AccessPointItem;

    iget v3, v3, Lcom/android/systemui/statusbar/phone/wifi/AccessPointItem;->networkId:I

    iput v3, v0, Landroid/net/wifi/WifiConfiguration;->networkId:I

    goto :goto_1

    .line 183
    :pswitch_0
    iget-object v3, v0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {v3, v6}, Ljava/util/BitSet;->set(I)V

    goto :goto_0

    .line 187
    :pswitch_1
    iget-object v3, v0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {v3, v6}, Ljava/util/BitSet;->set(I)V

    .line 188
    iget-object v3, v0, Landroid/net/wifi/WifiConfiguration;->allowedAuthAlgorithms:Ljava/util/BitSet;

    invoke-virtual {v3, v6}, Ljava/util/BitSet;->set(I)V

    .line 189
    iget-object v3, v0, Landroid/net/wifi/WifiConfiguration;->allowedAuthAlgorithms:Ljava/util/BitSet;

    invoke-virtual {v3, v4}, Ljava/util/BitSet;->set(I)V

    .line 190
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/wifi/WifiDialog;->mPassword:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->length()I

    move-result v3

    if-eqz v3, :cond_0

    .line 191
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/wifi/WifiDialog;->mPassword:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->length()I

    move-result v1

    .line 192
    .local v1, "length":I
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/wifi/WifiDialog;->mPassword:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    .line 194
    .local v2, "password":Ljava/lang/String;
    const/16 v3, 0xa

    if-eq v1, v3, :cond_4

    const/16 v3, 0x1a

    if-eq v1, v3, :cond_4

    const/16 v3, 0x3a

    if-ne v1, v3, :cond_5

    :cond_4
    const-string v3, "[0-9A-Fa-f]*"

    invoke-virtual {v2, v3}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 196
    iget-object v3, v0, Landroid/net/wifi/WifiConfiguration;->wepKeys:[Ljava/lang/String;

    aput-object v2, v3, v6

    goto/16 :goto_0

    .line 198
    :cond_5
    iget-object v3, v0, Landroid/net/wifi/WifiConfiguration;->wepKeys:[Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v6

    goto/16 :goto_0

    .line 203
    .end local v1    # "length":I
    .end local v2    # "password":Ljava/lang/String;
    :pswitch_2
    iget-object v3, v0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {v3, v4}, Ljava/util/BitSet;->set(I)V

    .line 204
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/wifi/WifiDialog;->mPassword:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->length()I

    move-result v3

    if-eqz v3, :cond_0

    .line 205
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/wifi/WifiDialog;->mPassword:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    .line 206
    .restart local v2    # "password":Ljava/lang/String;
    const-string v3, "[0-9A-Fa-f]{64}"

    invoke-virtual {v2, v3}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 207
    iput-object v2, v0, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    goto/16 :goto_0

    .line 209
    :cond_6
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    goto/16 :goto_0

    .line 233
    .end local v2    # "password":Ljava/lang/String;
    :pswitch_3
    iget-object v3, v0, Landroid/net/wifi/WifiConfiguration;->allowedProtocols:Ljava/util/BitSet;

    invoke-virtual {v3, v8}, Ljava/util/BitSet;->set(I)V

    .line 234
    iget-object v3, v0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    const/4 v4, 0x5

    invoke-virtual {v3, v4}, Ljava/util/BitSet;->set(I)V

    .line 235
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/wifi/WifiDialog;->mPassword:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->length()I

    move-result v3

    if-eqz v3, :cond_7

    .line 236
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/wifi/WifiDialog;->mPassword:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    .line 237
    .restart local v2    # "password":Ljava/lang/String;
    const-string v3, "[0-9A-Fa-f]{64}"

    invoke-virtual {v2, v3}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 238
    iput-object v2, v0, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    .line 243
    .end local v2    # "password":Ljava/lang/String;
    :cond_7
    :goto_2
    const-string v3, "StatusBar_WifiDialog"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "mWapiPskType.getSelectedItemPosition() "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/wifi/WifiDialog;->mWapiPskTypeSpinner:Landroid/widget/Spinner;

    invoke-virtual {v5}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 240
    .restart local v2    # "password":Ljava/lang/String;
    :cond_8
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    goto :goto_2

    .line 251
    .end local v2    # "password":Ljava/lang/String;
    :pswitch_4
    iget-object v3, v0, Landroid/net/wifi/WifiConfiguration;->allowedProtocols:Ljava/util/BitSet;

    invoke-virtual {v3, v8}, Ljava/util/BitSet;->set(I)V

    .line 252
    iget-object v3, v0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    const/4 v4, 0x6

    invoke-virtual {v3, v4}, Ljava/util/BitSet;->set(I)V

    goto/16 :goto_0

    .line 260
    :pswitch_5
    const-string v3, "StatusBar_WifiDialog"

    const-string v4, "statusbar getConfig do not support eap method!!!"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 181
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_5
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public hideSoftInput()V
    .locals 3

    .prologue
    .line 448
    invoke-static {}, Landroid/view/inputmethod/InputMethodManager;->getInstance()Landroid/view/inputmethod/InputMethodManager;

    move-result-object v0

    .line 449
    .local v0, "inputMethodManager":Landroid/view/inputmethod/InputMethodManager;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/inputmethod/InputMethodManager;->isActive()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 450
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/wifi/WifiDialog;->mPassword:Landroid/widget/TextView;

    if-eqz v1, :cond_0

    .line 451
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/wifi/WifiDialog;->mPassword:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->clearFocus()V

    .line 452
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/wifi/WifiDialog;->mPassword:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getApplicationWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 455
    :cond_0
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 505
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/wifi/WifiDialog;->mPassword:Landroid/widget/TextView;

    check-cast p1, Landroid/widget/CheckBox;

    .end local p1    # "view":Landroid/view/View;
    invoke-virtual {p1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x90

    :goto_0
    or-int/lit8 v0, v0, 0x1

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setInputType(I)V

    .line 509
    return-void

    .line 505
    :cond_0
    const/16 v0, 0x80

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 26
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 313
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/phone/wifi/WifiDialog;->getContext()Landroid/content/Context;

    move-result-object v7

    .line 314
    .local v7, "context":Landroid/content/Context;
    move-object/from16 v0, p0

    iput-object v7, v0, Lcom/android/systemui/statusbar/phone/wifi/WifiDialog;->mContext:Landroid/content/Context;

    .line 315
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/phone/wifi/WifiDialog;->getWindow()Landroid/view/Window;

    move-result-object v22

    .line 316
    .local v22, "window":Landroid/view/Window;
    const/16 v23, 0x7de

    invoke-virtual/range {v22 .. v23}, Landroid/view/Window;->setType(I)V

    .line 317
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/wifi/WifiDialog;->mAccessPoint:Lcom/android/systemui/statusbar/phone/wifi/AccessPointItem;

    move-object/from16 v23, v0

    if-nez v23, :cond_3

    .line 318
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/phone/wifi/WifiDialog;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v23

    const v24, 0x7f040086

    const/16 v25, 0x0

    invoke-virtual/range {v23 .. v25}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v23

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/systemui/statusbar/phone/wifi/WifiDialog;->mView:Landroid/view/View;

    .line 319
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/wifi/WifiDialog;->mView:Landroid/view/View;

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/wifi/WifiDialog;->setView(Landroid/view/View;)V

    .line 320
    const/16 v23, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/wifi/WifiDialog;->setInverseBackgroundForced(Z)V

    .line 321
    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v17

    .line 322
    .local v17, "resources":Landroid/content/res/Resources;
    const v23, 0x7f0b0116

    move-object/from16 v0, p0

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/wifi/WifiDialog;->setTitle(I)V

    .line 323
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/wifi/WifiDialog;->mView:Landroid/view/View;

    move-object/from16 v23, v0

    const v24, 0x7f0e018c

    invoke-virtual/range {v23 .. v24}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v23

    const/16 v24, 0x0

    invoke-virtual/range {v23 .. v24}, Landroid/view/View;->setVisibility(I)V

    .line 324
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/wifi/WifiDialog;->mView:Landroid/view/View;

    move-object/from16 v23, v0

    const v24, 0x7f0e018d

    invoke-virtual/range {v23 .. v24}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v23

    check-cast v23, Landroid/widget/TextView;

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/systemui/statusbar/phone/wifi/WifiDialog;->mSsid:Landroid/widget/TextView;

    .line 325
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/wifi/WifiDialog;->mSsid:Landroid/widget/TextView;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 326
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/wifi/WifiDialog;->mView:Landroid/view/View;

    move-object/from16 v23, v0

    const v24, 0x7f0e018e

    invoke-virtual/range {v23 .. v24}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v23

    check-cast v23, Landroid/widget/Spinner;

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 327
    const/16 v23, -0x1

    const v24, 0x7f0b0142

    move/from16 v0, v24

    invoke-virtual {v7, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/wifi/WifiDialog;->mListener:Landroid/content/DialogInterface$OnClickListener;

    move-object/from16 v25, v0

    move-object/from16 v0, p0

    move/from16 v1, v23

    move-object/from16 v2, v24

    move-object/from16 v3, v25

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/systemui/statusbar/phone/wifi/WifiDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 428
    .end local v17    # "resources":Landroid/content/res/Resources;
    :cond_0
    :goto_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/wifi/WifiDialog;->mReceiver:Landroid/content/BroadcastReceiver;

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/wifi/WifiDialog;->mFilter:Landroid/content/IntentFilter;

    move-object/from16 v24, v0

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    invoke-virtual {v7, v0, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 429
    const-string v23, "wifi"

    move-object/from16 v0, v23

    invoke-virtual {v7, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Landroid/net/wifi/WifiManager;

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/systemui/statusbar/phone/wifi/WifiDialog;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 430
    const/16 v23, -0x2

    const v24, 0x7f0b0143

    move/from16 v0, v24

    invoke-virtual {v7, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/wifi/WifiDialog;->mListener:Landroid/content/DialogInterface$OnClickListener;

    move-object/from16 v25, v0

    move-object/from16 v0, p0

    move/from16 v1, v23

    move-object/from16 v2, v24

    move-object/from16 v3, v25

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/systemui/statusbar/phone/wifi/WifiDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 433
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/wifi/WifiDialog;->mView:Landroid/view/View;

    move-object/from16 v23, v0

    if-eqz v23, :cond_1

    .line 434
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/wifi/WifiDialog;->mView:Landroid/view/View;

    move-object/from16 v23, v0

    const/16 v24, 0x2

    invoke-virtual/range {v23 .. v24}, Landroid/view/View;->setOverScrollMode(I)V

    .line 435
    const-string v23, "StatusBar_WifiDialog"

    const-string v24, "set dialog mView to never scroll"

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 437
    :cond_1
    const/16 v23, 0x5e6

    move-object/from16 v0, p0

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/wifi/WifiDialog;->setMaxHeight(I)V

    .line 438
    invoke-super/range {p0 .. p1}, Landroid/app/AlertDialog;->onCreate(Landroid/os/Bundle;)V

    .line 439
    const/16 v23, -0x3

    const v24, 0x7f09000e

    move-object/from16 v0, p0

    move/from16 v1, v23

    move/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/statusbar/phone/wifi/WifiDialog;->setButtonTextColor(II)V

    .line 441
    const/16 v23, -0x1

    move-object/from16 v0, p0

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/wifi/WifiDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v23

    if-eqz v23, :cond_2

    .line 442
    invoke-direct/range {p0 .. p0}, Lcom/android/systemui/statusbar/phone/wifi/WifiDialog;->validate()V

    .line 444
    :cond_2
    move-object/from16 v0, p0

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/wifi/WifiDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 445
    return-void

    .line 329
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/wifi/WifiDialog;->mAccessPoint:Lcom/android/systemui/statusbar/phone/wifi/AccessPointItem;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/wifi/AccessPointItem;->ssid:Ljava/lang/String;

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/wifi/WifiDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 330
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/wifi/WifiDialog;->mAccessPoint:Lcom/android/systemui/statusbar/phone/wifi/AccessPointItem;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Lcom/android/systemui/statusbar/phone/wifi/AccessPointItem;->getState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v20

    .line 331
    .local v20, "state":Landroid/net/NetworkInfo$DetailedState;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/wifi/WifiDialog;->mAccessPoint:Lcom/android/systemui/statusbar/phone/wifi/AccessPointItem;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Lcom/android/systemui/statusbar/phone/wifi/AccessPointItem;->getLevel()I

    move-result v13

    .line 332
    .local v13, "level":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/statusbar/phone/wifi/WifiDialog;->mSecurity:I

    move/from16 v23, v0

    if-nez v23, :cond_4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/wifi/WifiDialog;->mAccessPoint:Lcom/android/systemui/statusbar/phone/wifi/AccessPointItem;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget v0, v0, Lcom/android/systemui/statusbar/phone/wifi/AccessPointItem;->networkId:I

    move/from16 v23, v0

    const/16 v24, -0x1

    move/from16 v0, v23

    move/from16 v1, v24

    if-eq v0, v1, :cond_6

    .line 333
    :cond_4
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/phone/wifi/WifiDialog;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v23

    const v24, 0x7f040086

    const/16 v25, 0x0

    invoke-virtual/range {v23 .. v25}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v23

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/systemui/statusbar/phone/wifi/WifiDialog;->mView:Landroid/view/View;

    .line 335
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/wifi/WifiDialog;->mView:Landroid/view/View;

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/wifi/WifiDialog;->setView(Landroid/view/View;)V

    .line 337
    const/16 v23, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/wifi/WifiDialog;->setInverseBackgroundForced(Z)V

    .line 339
    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v17

    .line 340
    .restart local v17    # "resources":Landroid/content/res/Resources;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/wifi/WifiDialog;->mView:Landroid/view/View;

    move-object/from16 v23, v0

    const v24, 0x7f0e018b

    invoke-virtual/range {v23 .. v24}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/view/ViewGroup;

    .line 342
    .local v9, "group":Landroid/view/ViewGroup;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/wifi/WifiDialog;->mAccessPoint:Lcom/android/systemui/statusbar/phone/wifi/AccessPointItem;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget v0, v0, Lcom/android/systemui/statusbar/phone/wifi/AccessPointItem;->networkId:I

    move/from16 v23, v0

    const/16 v24, -0x1

    move/from16 v0, v23

    move/from16 v1, v24

    if-eq v0, v1, :cond_5

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/phone/wifi/WifiDialog;->edit:Z

    move/from16 v23, v0

    if-eqz v23, :cond_7

    .line 343
    :cond_5
    invoke-direct/range {p0 .. p0}, Lcom/android/systemui/statusbar/phone/wifi/WifiDialog;->showSecurityFields()V

    .line 416
    .end local v9    # "group":Landroid/view/ViewGroup;
    .end local v17    # "resources":Landroid/content/res/Resources;
    :cond_6
    :goto_1
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/phone/wifi/WifiDialog;->edit:Z

    move/from16 v23, v0

    if-eqz v23, :cond_13

    .line 417
    const/16 v23, -0x1

    const v24, 0x7f0b0142

    move/from16 v0, v24

    invoke-virtual {v7, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/wifi/WifiDialog;->mListener:Landroid/content/DialogInterface$OnClickListener;

    move-object/from16 v25, v0

    move-object/from16 v0, p0

    move/from16 v1, v23

    move-object/from16 v2, v24

    move-object/from16 v3, v25

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/systemui/statusbar/phone/wifi/WifiDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    goto/16 :goto_0

    .line 346
    .restart local v9    # "group":Landroid/view/ViewGroup;
    .restart local v17    # "resources":Landroid/content/res/Resources;
    :cond_7
    if-eqz v20, :cond_8

    .line 347
    const v23, 0x7f0b0118

    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/phone/wifi/WifiDialog;->getContext()Landroid/content/Context;

    move-result-object v24

    move-object/from16 v0, v24

    move-object/from16 v1, v20

    invoke-static {v0, v1}, Lcom/android/systemui/statusbar/phone/wifi/Summary;->get(Landroid/content/Context;Landroid/net/NetworkInfo$DetailedState;)Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, p0

    move/from16 v1, v23

    move-object/from16 v2, v24

    invoke-direct {v0, v9, v1, v2}, Lcom/android/systemui/statusbar/phone/wifi/WifiDialog;->addRow(Landroid/view/ViewGroup;ILjava/lang/String;)V

    .line 350
    :cond_8
    const v23, 0x7f08000a

    move-object/from16 v0, v17

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v21

    .line 351
    .local v21, "type":[Ljava/lang/String;
    const v23, 0x7f0b0115

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/wifi/WifiDialog;->mAccessPoint:Lcom/android/systemui/statusbar/phone/wifi/AccessPointItem;

    move-object/from16 v24, v0

    const/16 v25, 0x0

    invoke-virtual/range {v24 .. v25}, Lcom/android/systemui/statusbar/phone/wifi/AccessPointItem;->getSecurityString(Z)Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, p0

    move/from16 v1, v23

    move-object/from16 v2, v24

    invoke-direct {v0, v9, v1, v2}, Lcom/android/systemui/statusbar/phone/wifi/WifiDialog;->addRow(Landroid/view/ViewGroup;ILjava/lang/String;)V

    .line 353
    const/16 v23, -0x1

    move/from16 v0, v23

    if-eq v13, v0, :cond_9

    .line 354
    const v23, 0x7f08000e

    move-object/from16 v0, v17

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v19

    .line 356
    .local v19, "signal":[Ljava/lang/String;
    const v23, 0x7f0b0117

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v25, v19, v13

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, "("

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/wifi/WifiDialog;->mAccessPoint:Lcom/android/systemui/statusbar/phone/wifi/AccessPointItem;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    iget v0, v0, Lcom/android/systemui/statusbar/phone/wifi/AccessPointItem;->mRssi:I

    move/from16 v25, v0

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, "dBm)"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    const-string v25, "meizu"

    move-object/from16 v0, p0

    move/from16 v1, v23

    move-object/from16 v2, v24

    move-object/from16 v3, v25

    invoke-direct {v0, v9, v1, v2, v3}, Lcom/android/systemui/statusbar/phone/wifi/WifiDialog;->addRow(Landroid/view/ViewGroup;ILjava/lang/String;Ljava/lang/String;)V

    .line 359
    .end local v19    # "signal":[Ljava/lang/String;
    :cond_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/wifi/WifiDialog;->mAccessPoint:Lcom/android/systemui/statusbar/phone/wifi/AccessPointItem;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Lcom/android/systemui/statusbar/phone/wifi/AccessPointItem;->getInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v11

    .line 360
    .local v11, "info":Landroid/net/wifi/WifiInfo;
    if-eqz v11, :cond_6

    .line 361
    const v23, 0x7f0b0119

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11}, Landroid/net/wifi/WifiInfo;->getLinkSpeed()I

    move-result v25

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, "Mbps"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, p0

    move/from16 v1, v23

    move-object/from16 v2, v24

    invoke-direct {v0, v9, v1, v2}, Lcom/android/systemui/statusbar/phone/wifi/WifiDialog;->addRow(Landroid/view/ViewGroup;ILjava/lang/String;)V

    .line 363
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/wifi/WifiDialog;->mAccessPoint:Lcom/android/systemui/statusbar/phone/wifi/AccessPointItem;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget v0, v0, Lcom/android/systemui/statusbar/phone/wifi/AccessPointItem;->networkId:I

    move/from16 v23, v0

    const/16 v24, -0x1

    move/from16 v0, v23

    move/from16 v1, v24

    if-eq v0, v1, :cond_6

    .line 364
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/wifi/WifiDialog;->mAccessPoint:Lcom/android/systemui/statusbar/phone/wifi/AccessPointItem;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Lcom/android/systemui/statusbar/phone/wifi/AccessPointItem;->getConfig()Landroid/net/wifi/WifiConfiguration;

    move-result-object v6

    .line 365
    .local v6, "config":Landroid/net/wifi/WifiConfiguration;
    const-string v23, "connectivity"

    move-object/from16 v0, v23

    invoke-virtual {v7, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/net/ConnectivityManager;

    .line 367
    .local v5, "cm":Landroid/net/ConnectivityManager;
    const/16 v23, 0x1

    move/from16 v0, v23

    invoke-virtual {v5, v0}, Landroid/net/ConnectivityManager;->getLinkProperties(I)Landroid/net/LinkProperties;

    move-result-object v15

    .line 368
    .local v15, "linkProperties":Landroid/net/LinkProperties;
    if-eqz v15, :cond_12

    .line 370
    invoke-virtual {v15}, Landroid/net/LinkProperties;->getAddresses()Ljava/util/List;

    move-result-object v23

    invoke-interface/range {v23 .. v23}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    .local v10, "i$":Ljava/util/Iterator;
    :cond_a
    :goto_2
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v23

    if-eqz v23, :cond_b

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/net/InetAddress;

    .line 371
    .local v4, "a":Ljava/net/InetAddress;
    instance-of v0, v4, Ljava/net/Inet4Address;

    move/from16 v23, v0

    if-eqz v23, :cond_a

    invoke-virtual {v4}, Ljava/net/InetAddress;->isLinkLocalAddress()Z

    move-result v23

    if-nez v23, :cond_a

    .line 372
    const v23, 0x7f0b011a

    invoke-virtual {v4}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, p0

    move/from16 v1, v23

    move-object/from16 v2, v24

    invoke-direct {v0, v9, v1, v2}, Lcom/android/systemui/statusbar/phone/wifi/WifiDialog;->addRow(Landroid/view/ViewGroup;ILjava/lang/String;)V

    goto :goto_2

    .line 376
    .end local v4    # "a":Ljava/net/InetAddress;
    :cond_b
    invoke-virtual {v15}, Landroid/net/LinkProperties;->getLinkAddresses()Ljava/util/List;

    move-result-object v23

    invoke-interface/range {v23 .. v23}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v12

    .line 377
    .local v12, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/net/LinkAddress;>;"
    :cond_c
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v23

    if-eqz v23, :cond_d

    .line 378
    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroid/net/LinkAddress;

    .line 379
    .local v14, "linkAddress":Landroid/net/LinkAddress;
    invoke-virtual {v14}, Landroid/net/LinkAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v23

    move-object/from16 v0, v23

    instance-of v0, v0, Ljava/net/Inet4Address;

    move/from16 v23, v0

    if-eqz v23, :cond_c

    .line 380
    const v23, 0x7f0b0147

    invoke-virtual {v14}, Landroid/net/LinkAddress;->getNetworkPrefixLength()I

    move-result v24

    invoke-static/range {v24 .. v24}, Lcom/android/systemui/statusbar/phone/wifi/WifiDialog;->prefixLen2IpAddress(I)Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, p0

    move/from16 v1, v23

    move-object/from16 v2, v24

    invoke-direct {v0, v9, v1, v2}, Lcom/android/systemui/statusbar/phone/wifi/WifiDialog;->addRow(Landroid/view/ViewGroup;ILjava/lang/String;)V

    .line 385
    .end local v14    # "linkAddress":Landroid/net/LinkAddress;
    :cond_d
    invoke-virtual {v15}, Landroid/net/LinkProperties;->getRoutes()Ljava/util/List;

    move-result-object v23

    invoke-interface/range {v23 .. v23}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :cond_e
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v23

    if-eqz v23, :cond_f

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Landroid/net/RouteInfo;

    .line 386
    .local v18, "route":Landroid/net/RouteInfo;
    invoke-virtual/range {v18 .. v18}, Landroid/net/RouteInfo;->isDefaultRoute()Z

    move-result v23

    if-eqz v23, :cond_e

    .line 387
    const v23, 0x7f0b0146

    invoke-virtual/range {v18 .. v18}, Landroid/net/RouteInfo;->getGateway()Ljava/net/InetAddress;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, p0

    move/from16 v1, v23

    move-object/from16 v2, v24

    invoke-direct {v0, v9, v1, v2}, Lcom/android/systemui/statusbar/phone/wifi/WifiDialog;->addRow(Landroid/view/ViewGroup;ILjava/lang/String;)V

    .line 392
    .end local v18    # "route":Landroid/net/RouteInfo;
    :cond_f
    const/4 v8, 0x0

    .line 393
    .local v8, "dnsCount":I
    invoke-virtual {v15}, Landroid/net/LinkProperties;->getDnsServers()Ljava/util/List;

    move-result-object v23

    invoke-interface/range {v23 .. v23}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :cond_10
    :goto_3
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v23

    if-eqz v23, :cond_12

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/net/InetAddress;

    .line 394
    .restart local v4    # "a":Ljava/net/InetAddress;
    instance-of v0, v4, Ljava/net/Inet4Address;

    move/from16 v23, v0

    if-eqz v23, :cond_10

    invoke-virtual {v4}, Ljava/net/InetAddress;->isLinkLocalAddress()Z

    move-result v23

    if-nez v23, :cond_10

    .line 395
    if-nez v8, :cond_11

    .line 396
    const v23, 0x7f0b0144

    invoke-virtual {v4}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, p0

    move/from16 v1, v23

    move-object/from16 v2, v24

    invoke-direct {v0, v9, v1, v2}, Lcom/android/systemui/statusbar/phone/wifi/WifiDialog;->addRow(Landroid/view/ViewGroup;ILjava/lang/String;)V

    .line 397
    add-int/lit8 v8, v8, 0x1

    goto :goto_3

    .line 399
    :cond_11
    const v23, 0x7f0b0145

    invoke-virtual {v4}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, p0

    move/from16 v1, v23

    move-object/from16 v2, v24

    invoke-direct {v0, v9, v1, v2}, Lcom/android/systemui/statusbar/phone/wifi/WifiDialog;->addRow(Landroid/view/ViewGroup;ILjava/lang/String;)V

    .line 406
    .end local v4    # "a":Ljava/net/InetAddress;
    .end local v8    # "dnsCount":I
    .end local v10    # "i$":Ljava/util/Iterator;
    .end local v12    # "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/net/LinkAddress;>;"
    :cond_12
    invoke-virtual {v11}, Landroid/net/wifi/WifiInfo;->getBSSID()Ljava/lang/String;

    move-result-object v16

    .line 407
    .local v16, "macAddress":Ljava/lang/String;
    if-eqz v16, :cond_6

    .line 408
    invoke-virtual/range {v16 .. v16}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v16

    .line 409
    const v23, 0x7f0b014a

    move-object/from16 v0, p0

    move/from16 v1, v23

    move-object/from16 v2, v16

    invoke-direct {v0, v9, v1, v2}, Lcom/android/systemui/statusbar/phone/wifi/WifiDialog;->addRow(Landroid/view/ViewGroup;ILjava/lang/String;)V

    goto/16 :goto_1

    .line 419
    .end local v5    # "cm":Landroid/net/ConnectivityManager;
    .end local v6    # "config":Landroid/net/wifi/WifiConfiguration;
    .end local v9    # "group":Landroid/view/ViewGroup;
    .end local v11    # "info":Landroid/net/wifi/WifiInfo;
    .end local v15    # "linkProperties":Landroid/net/LinkProperties;
    .end local v16    # "macAddress":Ljava/lang/String;
    .end local v17    # "resources":Landroid/content/res/Resources;
    .end local v21    # "type":[Ljava/lang/String;
    :cond_13
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/wifi/WifiDialog;->mAccessPoint:Lcom/android/systemui/statusbar/phone/wifi/AccessPointItem;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget v0, v0, Lcom/android/systemui/statusbar/phone/wifi/AccessPointItem;->networkId:I

    move/from16 v23, v0

    const/16 v24, -0x1

    move/from16 v0, v23

    move/from16 v1, v24

    if-ne v0, v1, :cond_14

    const/16 v23, -0x1

    move/from16 v0, v23

    if-eq v13, v0, :cond_14

    .line 420
    const/16 v23, -0x1

    const v24, 0x7f0b0140

    move/from16 v0, v24

    invoke-virtual {v7, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/wifi/WifiDialog;->mListener:Landroid/content/DialogInterface$OnClickListener;

    move-object/from16 v25, v0

    move-object/from16 v0, p0

    move/from16 v1, v23

    move-object/from16 v2, v24

    move-object/from16 v3, v25

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/systemui/statusbar/phone/wifi/WifiDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 422
    :cond_14
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/wifi/WifiDialog;->mAccessPoint:Lcom/android/systemui/statusbar/phone/wifi/AccessPointItem;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget v0, v0, Lcom/android/systemui/statusbar/phone/wifi/AccessPointItem;->networkId:I

    move/from16 v23, v0

    const/16 v24, -0x1

    move/from16 v0, v23

    move/from16 v1, v24

    if-eq v0, v1, :cond_0

    .line 423
    const/16 v23, -0x3

    const v24, 0x7f0b0141

    move/from16 v0, v24

    invoke-virtual {v7, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/wifi/WifiDialog;->mListener:Landroid/content/DialogInterface$OnClickListener;

    move-object/from16 v25, v0

    move-object/from16 v0, p0

    move/from16 v1, v23

    move-object/from16 v2, v24

    move-object/from16 v3, v25

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/systemui/statusbar/phone/wifi/WifiDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    goto/16 :goto_0
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 0
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .prologue
    .line 677
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/wifi/WifiDialog;->hideSoftInput()V

    .line 678
    return-void
.end method

.method public onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 0
    .param p1, "parent"    # Landroid/widget/AdapterView;
    .param p2, "view"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J

    .prologue
    .line 522
    iput p3, p0, Lcom/android/systemui/statusbar/phone/wifi/WifiDialog;->mSecurity:I

    .line 523
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/wifi/WifiDialog;->showSecurityFields()V

    .line 524
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/wifi/WifiDialog;->validate()V

    .line 525
    return-void
.end method

.method public onNothingSelected(Landroid/widget/AdapterView;)V
    .locals 0
    .param p1, "parent"    # Landroid/widget/AdapterView;

    .prologue
    .line 528
    return-void
.end method

.method protected onStop()V
    .locals 2

    .prologue
    .line 460
    invoke-super {p0}, Landroid/app/AlertDialog;->onStop()V

    .line 462
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/wifi/WifiDialog;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/wifi/WifiDialog;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 463
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "before"    # I
    .param p4, "count"    # I

    .prologue
    .line 512
    return-void
.end method

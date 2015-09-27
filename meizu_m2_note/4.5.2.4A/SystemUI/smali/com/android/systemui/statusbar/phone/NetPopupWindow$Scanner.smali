.class Lcom/android/systemui/statusbar/phone/NetPopupWindow$Scanner;
.super Landroid/os/Handler;
.source "NetPopupWindow.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/phone/NetPopupWindow;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Scanner"
.end annotation


# instance fields
.field private mRetry:I

.field final synthetic this$0:Lcom/android/systemui/statusbar/phone/NetPopupWindow;


# direct methods
.method private constructor <init>(Lcom/android/systemui/statusbar/phone/NetPopupWindow;)V
    .locals 1

    .prologue
    .line 870
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/NetPopupWindow$Scanner;->this$0:Lcom/android/systemui/statusbar/phone/NetPopupWindow;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 871
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/systemui/statusbar/phone/NetPopupWindow$Scanner;->mRetry:I

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/systemui/statusbar/phone/NetPopupWindow;Lcom/android/systemui/statusbar/phone/NetPopupWindow$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/systemui/statusbar/phone/NetPopupWindow;
    .param p2, "x1"    # Lcom/android/systemui/statusbar/phone/NetPopupWindow$1;

    .prologue
    .line 870
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/NetPopupWindow$Scanner;-><init>(Lcom/android/systemui/statusbar/phone/NetPopupWindow;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .param p1, "message"    # Landroid/os/Message;

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 891
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NetPopupWindow$Scanner;->this$0:Lcom/android/systemui/statusbar/phone/NetPopupWindow;

    # getter for: Lcom/android/systemui/statusbar/phone/NetPopupWindow;->mWifiManager:Landroid/net/wifi/WifiManager;
    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/NetPopupWindow;->access$300(Lcom/android/systemui/statusbar/phone/NetPopupWindow;)Landroid/net/wifi/WifiManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->startScan()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 892
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NetPopupWindow$Scanner;->this$0:Lcom/android/systemui/statusbar/phone/NetPopupWindow;

    # setter for: Lcom/android/systemui/statusbar/phone/NetPopupWindow;->allowUpdateList:Z
    invoke-static {v0, v3}, Lcom/android/systemui/statusbar/phone/NetPopupWindow;->access$402(Lcom/android/systemui/statusbar/phone/NetPopupWindow;Z)Z

    .line 893
    iput v2, p0, Lcom/android/systemui/statusbar/phone/NetPopupWindow$Scanner;->mRetry:I

    .line 900
    :cond_0
    const-wide/16 v0, 0x3a98

    invoke-virtual {p0, v2, v0, v1}, Lcom/android/systemui/statusbar/phone/NetPopupWindow$Scanner;->sendEmptyMessageDelayed(IJ)Z

    .line 901
    :goto_0
    return-void

    .line 894
    :cond_1
    iget v0, p0, Lcom/android/systemui/statusbar/phone/NetPopupWindow$Scanner;->mRetry:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/systemui/statusbar/phone/NetPopupWindow$Scanner;->mRetry:I

    const/4 v1, 0x3

    if-lt v0, v1, :cond_0

    .line 895
    iput v2, p0, Lcom/android/systemui/statusbar/phone/NetPopupWindow$Scanner;->mRetry:I

    .line 896
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NetPopupWindow$Scanner;->this$0:Lcom/android/systemui/statusbar/phone/NetPopupWindow;

    # getter for: Lcom/android/systemui/statusbar/phone/NetPopupWindow;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/NetPopupWindow;->access$500(Lcom/android/systemui/statusbar/phone/NetPopupWindow;)Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0b0135

    invoke-static {v0, v1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method

.method pause()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 885
    iput v0, p0, Lcom/android/systemui/statusbar/phone/NetPopupWindow$Scanner;->mRetry:I

    .line 886
    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/NetPopupWindow$Scanner;->removeMessages(I)V

    .line 887
    return-void
.end method

.method resume()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 874
    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/phone/NetPopupWindow$Scanner;->hasMessages(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 875
    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/phone/NetPopupWindow$Scanner;->sendEmptyMessage(I)Z

    .line 877
    :cond_0
    return-void
.end method

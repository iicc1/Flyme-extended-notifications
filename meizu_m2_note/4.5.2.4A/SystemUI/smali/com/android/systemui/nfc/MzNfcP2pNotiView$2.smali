.class Lcom/android/systemui/nfc/MzNfcP2pNotiView$2;
.super Landroid/os/Handler;
.source "MzNfcP2pNotiView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/nfc/MzNfcP2pNotiView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/nfc/MzNfcP2pNotiView;


# direct methods
.method constructor <init>(Lcom/android/systemui/nfc/MzNfcP2pNotiView;)V
    .locals 0

    .prologue
    .line 219
    iput-object p1, p0, Lcom/android/systemui/nfc/MzNfcP2pNotiView$2;->this$0:Lcom/android/systemui/nfc/MzNfcP2pNotiView;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/16 v2, 0x8

    const/4 v1, 0x2

    .line 221
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 234
    :goto_0
    return-void

    .line 223
    :pswitch_0
    iget-object v0, p0, Lcom/android/systemui/nfc/MzNfcP2pNotiView$2;->this$0:Lcom/android/systemui/nfc/MzNfcP2pNotiView;

    invoke-virtual {v0, v2}, Lcom/android/systemui/nfc/MzNfcP2pNotiView;->setVisibility(I)V

    .line 224
    iget-object v0, p0, Lcom/android/systemui/nfc/MzNfcP2pNotiView$2;->this$0:Lcom/android/systemui/nfc/MzNfcP2pNotiView;

    # getter for: Lcom/android/systemui/nfc/MzNfcP2pNotiView;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/systemui/nfc/MzNfcP2pNotiView;->access$100(Lcom/android/systemui/nfc/MzNfcP2pNotiView;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    goto :goto_0

    .line 227
    :pswitch_1
    iget-object v0, p0, Lcom/android/systemui/nfc/MzNfcP2pNotiView$2;->this$0:Lcom/android/systemui/nfc/MzNfcP2pNotiView;

    # getter for: Lcom/android/systemui/nfc/MzNfcP2pNotiView;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/systemui/nfc/MzNfcP2pNotiView;->access$400(Lcom/android/systemui/nfc/MzNfcP2pNotiView;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/nfc/NfcAdapterMzExt;->getNfcAdapterMzExt(Landroid/content/Context;)Landroid/nfc/NfcAdapterMzExt;

    move-result-object v0

    invoke-virtual {v0}, Landroid/nfc/NfcAdapterMzExt;->isMzNfcP2pConnected()Z

    move-result v0

    if-nez v0, :cond_0

    .line 228
    iget-object v0, p0, Lcom/android/systemui/nfc/MzNfcP2pNotiView$2;->this$0:Lcom/android/systemui/nfc/MzNfcP2pNotiView;

    invoke-virtual {v0, v2}, Lcom/android/systemui/nfc/MzNfcP2pNotiView;->setVisibility(I)V

    goto :goto_0

    .line 230
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/nfc/MzNfcP2pNotiView$2;->this$0:Lcom/android/systemui/nfc/MzNfcP2pNotiView;

    # getter for: Lcom/android/systemui/nfc/MzNfcP2pNotiView;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/systemui/nfc/MzNfcP2pNotiView;->access$100(Lcom/android/systemui/nfc/MzNfcP2pNotiView;)Landroid/os/Handler;

    move-result-object v0

    const-wide/32 v2, 0xea60

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    .line 221
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

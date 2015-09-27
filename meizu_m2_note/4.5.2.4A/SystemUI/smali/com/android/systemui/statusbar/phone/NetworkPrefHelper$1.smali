.class Lcom/android/systemui/statusbar/phone/NetworkPrefHelper$1;
.super Ljava/lang/Object;
.source "NetworkPrefHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/phone/NetworkPrefHelper;->setPrefMode(I)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/phone/NetworkPrefHelper;

.field final synthetic val$netTypeTo:I


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/phone/NetworkPrefHelper;I)V
    .locals 0

    .prologue
    .line 313
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/NetworkPrefHelper$1;->this$0:Lcom/android/systemui/statusbar/phone/NetworkPrefHelper;

    iput p2, p0, Lcom/android/systemui/statusbar/phone/NetworkPrefHelper$1;->val$netTypeTo:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .prologue
    const/4 v7, 0x0

    .line 316
    const-string v4, "phone_ext"

    invoke-static {v4}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Landroid/telephony/ITelephonyExt$Stub;->asInterface(Landroid/os/IBinder;)Landroid/telephony/ITelephonyExt;

    move-result-object v1

    .line 318
    .local v1, "iPhoneEx":Landroid/telephony/ITelephonyExt;
    :try_start_0
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/NetworkPrefHelper$1;->this$0:Lcom/android/systemui/statusbar/phone/NetworkPrefHelper;

    const/4 v5, 0x1

    # setter for: Lcom/android/systemui/statusbar/phone/NetworkPrefHelper;->mIsTurnning:Z
    invoke-static {v4, v5}, Lcom/android/systemui/statusbar/phone/NetworkPrefHelper;->access$002(Lcom/android/systemui/statusbar/phone/NetworkPrefHelper;Z)Z

    .line 319
    # getter for: Lcom/android/systemui/statusbar/phone/NetworkPrefHelper;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/systemui/statusbar/phone/NetworkPrefHelper;->access$100()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "netTypeTo = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/android/systemui/statusbar/phone/NetworkPrefHelper$1;->val$netTypeTo:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 320
    iget v3, p0, Lcom/android/systemui/statusbar/phone/NetworkPrefHelper$1;->val$netTypeTo:I

    .line 322
    .local v3, "tempValue":I
    invoke-static {}, Lcom/android/systemui/statusbar/phone/NetworkPrefHelper;->get34GCapabilitySubId()I

    move-result v2

    .line 323
    .local v2, "phoneSubId":I
    # getter for: Lcom/android/systemui/statusbar/phone/NetworkPrefHelper;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/systemui/statusbar/phone/NetworkPrefHelper;->access$100()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "setPrefMode networkMode = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " subId[0] = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 324
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/NetworkPrefHelper$1;->this$0:Lcom/android/systemui/statusbar/phone/NetworkPrefHelper;

    # getter for: Lcom/android/systemui/statusbar/phone/NetworkPrefHelper;->mContext:Landroid/content/Context;
    invoke-static {v4}, Lcom/android/systemui/statusbar/phone/NetworkPrefHelper;->access$200(Lcom/android/systemui/statusbar/phone/NetworkPrefHelper;)Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "preferred_network_mode"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v3}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 328
    const/4 v4, 0x0

    invoke-interface {v1, v3, v4}, Landroid/telephony/ITelephonyExt;->setPreferredNetworkType(II)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 332
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/NetworkPrefHelper$1;->this$0:Lcom/android/systemui/statusbar/phone/NetworkPrefHelper;

    # setter for: Lcom/android/systemui/statusbar/phone/NetworkPrefHelper;->mIsTurnning:Z
    invoke-static {v4, v7}, Lcom/android/systemui/statusbar/phone/NetworkPrefHelper;->access$002(Lcom/android/systemui/statusbar/phone/NetworkPrefHelper;Z)Z

    .line 334
    .end local v2    # "phoneSubId":I
    .end local v3    # "tempValue":I
    :goto_0
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/NetworkPrefHelper$1;->this$0:Lcom/android/systemui/statusbar/phone/NetworkPrefHelper;

    # setter for: Lcom/android/systemui/statusbar/phone/NetworkPrefHelper;->mIsTurnning:Z
    invoke-static {v4, v7}, Lcom/android/systemui/statusbar/phone/NetworkPrefHelper;->access$002(Lcom/android/systemui/statusbar/phone/NetworkPrefHelper;Z)Z

    .line 335
    return-void

    .line 329
    :catch_0
    move-exception v0

    .line 330
    .local v0, "e":Landroid/os/RemoteException;
    :try_start_1
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 332
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/NetworkPrefHelper$1;->this$0:Lcom/android/systemui/statusbar/phone/NetworkPrefHelper;

    # setter for: Lcom/android/systemui/statusbar/phone/NetworkPrefHelper;->mIsTurnning:Z
    invoke-static {v4, v7}, Lcom/android/systemui/statusbar/phone/NetworkPrefHelper;->access$002(Lcom/android/systemui/statusbar/phone/NetworkPrefHelper;Z)Z

    goto :goto_0

    .end local v0    # "e":Landroid/os/RemoteException;
    :catchall_0
    move-exception v4

    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/NetworkPrefHelper$1;->this$0:Lcom/android/systemui/statusbar/phone/NetworkPrefHelper;

    # setter for: Lcom/android/systemui/statusbar/phone/NetworkPrefHelper;->mIsTurnning:Z
    invoke-static {v5, v7}, Lcom/android/systemui/statusbar/phone/NetworkPrefHelper;->access$002(Lcom/android/systemui/statusbar/phone/NetworkPrefHelper;Z)Z

    throw v4
.end method

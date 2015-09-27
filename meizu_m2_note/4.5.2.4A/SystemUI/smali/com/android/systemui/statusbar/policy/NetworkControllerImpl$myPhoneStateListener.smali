.class Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$myPhoneStateListener;
.super Landroid/telephony/PhoneStateListener;
.source "NetworkControllerImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "myPhoneStateListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;I)V
    .locals 0
    .param p2, "subId"    # I

    .prologue
    .line 577
    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$myPhoneStateListener;->this$0:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;

    .line 578
    invoke-direct {p0, p2}, Landroid/telephony/PhoneStateListener;-><init>(I)V

    .line 579
    return-void
.end method


# virtual methods
.method public onCallStateChanged(ILjava/lang/String;)V
    .locals 4
    .param p1, "state"    # I
    .param p2, "incomingNumber"    # Ljava/lang/String;

    .prologue
    .line 665
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$myPhoneStateListener;->this$0:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;

    iget-object v1, v1, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mPhoneStateListener:[Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$myPhoneStateListener;

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, p0}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v0

    .line 667
    .local v0, "slotId":I
    const-string v1, "StatusBar.NetworkController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "PhoneStateListener:onCallStateChanged, sim"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " before."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 668
    const-string v1, "StatusBar.NetworkController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "PhoneStateListener:onCallStateChanged state="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 670
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$myPhoneStateListener;->this$0:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;

    # invokes: Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->isValidSlotId(I)Z
    invoke-static {v1, v0}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->access$000(Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 672
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$myPhoneStateListener;->this$0:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;

    # invokes: Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->isCdma(I)Z
    invoke-static {v1, v0}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->access$400(Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 673
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$myPhoneStateListener;->this$0:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;

    # invokes: Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->updateTelephonySignalStrength(I)V
    invoke-static {v1, v0}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->access$100(Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;I)V

    .line 674
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$myPhoneStateListener;->this$0:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;

    invoke-virtual {v1, v0}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->refreshViews(I)V

    .line 677
    :cond_0
    return-void
.end method

.method public onDataActivity(I)V
    .locals 4
    .param p1, "direction"    # I

    .prologue
    .line 744
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$myPhoneStateListener;->this$0:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;

    iget-object v1, v1, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mPhoneStateListener:[Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$myPhoneStateListener;

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, p0}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v0

    .line 746
    .local v0, "slotId":I
    const-string v1, "StatusBar.NetworkController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "PhoneStateListener:onDataActivity, sim"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " before."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 747
    const-string v1, "StatusBar.NetworkController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "PhoneStateListener:onDataActivity: direction="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 749
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$myPhoneStateListener;->this$0:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;

    # invokes: Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->isValidSlotId(I)Z
    invoke-static {v1, v0}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->access$000(Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 750
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$myPhoneStateListener;->this$0:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;

    iget-object v1, v1, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataActivity:[I

    aput p1, v1, v0

    .line 751
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$myPhoneStateListener;->this$0:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;

    # invokes: Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->updateDataIcon(I)V
    invoke-static {v1, v0}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->access$300(Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;I)V

    .line 752
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$myPhoneStateListener;->this$0:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;

    invoke-virtual {v1, v0}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->refreshViews(I)V

    .line 754
    :cond_0
    return-void
.end method

.method public onDataConnectionStateChanged(II)V
    .locals 5
    .param p1, "state"    # I
    .param p2, "networkType"    # I

    .prologue
    .line 681
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$myPhoneStateListener;->this$0:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;

    iget-object v2, v2, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mPhoneStateListener:[Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$myPhoneStateListener;

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, p0}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v1

    .line 683
    .local v1, "slotId":I
    const-string v2, "StatusBar.NetworkController"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "PhoneStateListener:onDataConnectionStateChanged, sim"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " before."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 684
    const-string v2, "StatusBar.NetworkController"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "PhoneStateListener:onDataConnectionStateChanged: state="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " type="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 687
    packed-switch p1, :pswitch_data_0

    .line 704
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    .line 707
    .local v0, "s":Ljava/lang/String;
    :goto_0
    const-string v2, "StatusBar.NetworkController"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "PhoneStateListener:onServiceStateChanged state = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 709
    packed-switch p2, :pswitch_data_1

    .line 728
    :pswitch_0
    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    .line 731
    :goto_1
    const-string v2, "StatusBar.NetworkController"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "PhoneStateListener:onServiceStateChanged networkType = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 733
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$myPhoneStateListener;->this$0:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;

    # invokes: Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->isValidSlotId(I)Z
    invoke-static {v2, v1}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->access$000(Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 734
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$myPhoneStateListener;->this$0:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;

    iget-object v2, v2, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataState:[I

    aput p1, v2, v1

    .line 735
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$myPhoneStateListener;->this$0:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;

    iget-object v2, v2, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataNetType:[I

    aput p2, v2, v1

    .line 736
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$myPhoneStateListener;->this$0:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;

    # invokes: Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->updateDataNetType(I)V
    invoke-static {v2, v1}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->access$200(Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;I)V

    .line 737
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$myPhoneStateListener;->this$0:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;

    # invokes: Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->updateDataIcon(I)V
    invoke-static {v2, v1}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->access$300(Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;I)V

    .line 738
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$myPhoneStateListener;->this$0:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;

    invoke-virtual {v2, v1}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->refreshViews(I)V

    .line 740
    :cond_0
    return-void

    .line 689
    .end local v0    # "s":Ljava/lang/String;
    :pswitch_1
    const-string v0, "DATA_UNKNOWN"

    .line 690
    .restart local v0    # "s":Ljava/lang/String;
    goto :goto_0

    .line 692
    .end local v0    # "s":Ljava/lang/String;
    :pswitch_2
    const-string v0, "DATA_DISCONNECTED"

    .line 693
    .restart local v0    # "s":Ljava/lang/String;
    goto :goto_0

    .line 695
    .end local v0    # "s":Ljava/lang/String;
    :pswitch_3
    const-string v0, "DATA_CONNECTING"

    .line 696
    .restart local v0    # "s":Ljava/lang/String;
    goto :goto_0

    .line 698
    .end local v0    # "s":Ljava/lang/String;
    :pswitch_4
    const-string v0, "DATA_CONNECTED"

    .line 699
    .restart local v0    # "s":Ljava/lang/String;
    goto :goto_0

    .line 701
    .end local v0    # "s":Ljava/lang/String;
    :pswitch_5
    const-string v0, "DATA_SUSPENDED"

    .line 702
    .restart local v0    # "s":Ljava/lang/String;
    goto :goto_0

    .line 711
    :pswitch_6
    const-string v0, "NETWORK_TYPE_UNKNOWN"

    .line 712
    goto :goto_1

    .line 715
    :pswitch_7
    const-string v0, "NETWORK_TYPE_2G"

    .line 716
    goto :goto_1

    .line 722
    :pswitch_8
    const-string v0, "NETWORK_TYPE_3G"

    .line 723
    goto :goto_1

    .line 725
    :pswitch_9
    const-string v0, "NETWORK_TYPE_4G"

    .line 726
    goto :goto_1

    .line 687
    nop

    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch

    .line 709
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_6
        :pswitch_7
        :pswitch_7
        :pswitch_8
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_0
        :pswitch_0
        :pswitch_9
        :pswitch_0
        :pswitch_8
    .end packed-switch
.end method

.method public onServiceStateChanged(Landroid/telephony/ServiceState;)V
    .locals 9
    .param p1, "state"    # Landroid/telephony/ServiceState;

    .prologue
    const/4 v8, 0x1

    .line 598
    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$myPhoneStateListener;->this$0:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;

    iget-object v5, v5, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mPhoneStateListener:[Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$myPhoneStateListener;

    invoke-static {v5}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, p0}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v3

    .line 600
    .local v3, "slotId":I
    const-string v5, "StatusBar.NetworkController"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "PhoneStateListener:onServiceStateChanged, sim"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " before."

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 601
    const-string v5, "StatusBar.NetworkController"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "PhoneStateListener:onServiceStateChanged voiceState="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getVoiceRegState()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " dataState="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getDataRegState()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 610
    const-string v2, "UNKNOW STATE..."

    .line 612
    .local v2, "s":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getState()I

    move-result v5

    packed-switch v5, :pswitch_data_0

    .line 627
    :goto_0
    const-string v5, "StatusBar.NetworkController"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "PhoneStateListener:onServiceStateChanged state = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 630
    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$myPhoneStateListener;->this$0:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;

    # invokes: Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->isValidSlotId(I)Z
    invoke-static {v5, v3}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->access$000(Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;I)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 631
    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$myPhoneStateListener;->this$0:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;

    iget-object v5, v5, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mServiceState:[Landroid/telephony/ServiceState;

    aput-object p1, v5, v3

    .line 632
    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getVoiceRegState()I

    move-result v5

    if-ne v5, v8, :cond_0

    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getDataRegState()I

    move-result v5

    if-ne v5, v8, :cond_0

    .line 639
    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$myPhoneStateListener;->this$0:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;

    iget-object v5, v5, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataNetType:[I

    const/4 v6, 0x0

    aput v6, v5, v3

    .line 647
    :cond_0
    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getVoiceNetworkType()I

    move-result v4

    .line 648
    .local v4, "voiceNetType":I
    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getDataNetworkType()I

    move-result v1

    .line 649
    .local v1, "dataNetType":I
    if-nez v1, :cond_3

    move v0, v4

    .line 652
    .local v0, "chosenNetType":I
    :goto_1
    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$myPhoneStateListener;->this$0:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;

    iget-object v5, v5, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataNetType:[I

    aget v5, v5, v3

    if-eq v0, v5, :cond_1

    .line 653
    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$myPhoneStateListener;->this$0:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;

    iget-object v5, v5, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataNetType:[I

    aput v0, v5, v3

    .line 655
    :cond_1
    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$myPhoneStateListener;->this$0:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;

    invoke-virtual {v5, v3}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->updateServiceState(I)V

    .line 656
    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$myPhoneStateListener;->this$0:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;

    # invokes: Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->updateTelephonySignalStrength(I)V
    invoke-static {v5, v3}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->access$100(Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;I)V

    .line 657
    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$myPhoneStateListener;->this$0:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;

    # invokes: Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->updateDataNetType(I)V
    invoke-static {v5, v3}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->access$200(Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;I)V

    .line 658
    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$myPhoneStateListener;->this$0:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;

    # invokes: Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->updateDataIcon(I)V
    invoke-static {v5, v3}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->access$300(Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;I)V

    .line 659
    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$myPhoneStateListener;->this$0:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;

    invoke-virtual {v5, v3}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->refreshViews(I)V

    .line 661
    .end local v0    # "chosenNetType":I
    .end local v1    # "dataNetType":I
    .end local v4    # "voiceNetType":I
    :cond_2
    return-void

    .line 614
    :pswitch_0
    const-string v2, "STATE_IN_SERVICE"

    .line 615
    goto :goto_0

    .line 617
    :pswitch_1
    const-string v2, "STATE_OUT_OF_SERVICE"

    .line 618
    goto :goto_0

    .line 620
    :pswitch_2
    const-string v2, "STATE_EMERGENCY_ONLY"

    .line 621
    goto :goto_0

    .line 623
    :pswitch_3
    const-string v2, "STATE_POWER_OFF"

    goto :goto_0

    .restart local v1    # "dataNetType":I
    .restart local v4    # "voiceNetType":I
    :cond_3
    move v0, v1

    .line 649
    goto :goto_1

    .line 612
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public onSignalStrengthsChanged(Landroid/telephony/SignalStrength;)V
    .locals 2
    .param p1, "signalStrength"    # Landroid/telephony/SignalStrength;

    .prologue
    .line 583
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$myPhoneStateListener;->this$0:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;

    iget-object v1, v1, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mPhoneStateListener:[Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$myPhoneStateListener;

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, p0}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v0

    .line 589
    .local v0, "slotId":I
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$myPhoneStateListener;->this$0:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;

    # invokes: Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->isValidSlotId(I)Z
    invoke-static {v1, v0}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->access$000(Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 590
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$myPhoneStateListener;->this$0:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;

    iget-object v1, v1, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mSignalStrength:[Landroid/telephony/SignalStrength;

    aput-object p1, v1, v0

    .line 591
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$myPhoneStateListener;->this$0:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;

    # invokes: Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->updateTelephonySignalStrength(I)V
    invoke-static {v1, v0}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->access$100(Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;I)V

    .line 592
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$myPhoneStateListener;->this$0:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;

    invoke-virtual {v1, v0}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->refreshViews(I)V

    .line 594
    :cond_0
    return-void
.end method

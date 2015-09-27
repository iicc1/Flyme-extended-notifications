.class Lcom/android/systemui/statusbar/policy/NetworkControllerImplTelecom$myPhoneStateListener;
.super Landroid/telephony/PhoneStateListener;
.source "NetworkControllerImplTelecom.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/policy/NetworkControllerImplTelecom;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "myPhoneStateListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/policy/NetworkControllerImplTelecom;


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/policy/NetworkControllerImplTelecom;I)V
    .locals 0
    .param p2, "subId"    # I

    .prologue
    .line 594
    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImplTelecom$myPhoneStateListener;->this$0:Lcom/android/systemui/statusbar/policy/NetworkControllerImplTelecom;

    .line 595
    invoke-direct {p0, p2}, Landroid/telephony/PhoneStateListener;-><init>(I)V

    .line 596
    return-void
.end method


# virtual methods
.method public onCallStateChanged(ILjava/lang/String;)V
    .locals 5
    .param p1, "state"    # I
    .param p2, "incomingNumber"    # Ljava/lang/String;

    .prologue
    .line 682
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImplTelecom$myPhoneStateListener;->this$0:Lcom/android/systemui/statusbar/policy/NetworkControllerImplTelecom;

    iget-object v2, v2, Lcom/android/systemui/statusbar/policy/NetworkControllerImplTelecom;->mPhoneStateListener:[Lcom/android/systemui/statusbar/policy/NetworkControllerImplTelecom$myPhoneStateListener;

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, p0}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v0

    .line 683
    .local v0, "slotId":I
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImplTelecom$myPhoneStateListener;->this$0:Lcom/android/systemui/statusbar/policy/NetworkControllerImplTelecom;

    iget-object v2, v2, Lcom/android/systemui/statusbar/policy/NetworkControllerImplTelecom;->mCallState:[I

    aput p1, v2, v0

    .line 685
    const-string v2, "StatusBar.NetworkControllerTelecom"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "PhoneStateListener:onCallStateChanged, sim"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " before."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 686
    const-string v2, "StatusBar.NetworkControllerTelecom"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "PhoneStateListener:onCallStateChanged state="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 688
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImplTelecom$myPhoneStateListener;->this$0:Lcom/android/systemui/statusbar/policy/NetworkControllerImplTelecom;

    # invokes: Lcom/android/systemui/statusbar/policy/NetworkControllerImplTelecom;->isValidSlotId(I)Z
    invoke-static {v2, v0}, Lcom/android/systemui/statusbar/policy/NetworkControllerImplTelecom;->access$000(Lcom/android/systemui/statusbar/policy/NetworkControllerImplTelecom;I)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 690
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImplTelecom$myPhoneStateListener;->this$0:Lcom/android/systemui/statusbar/policy/NetworkControllerImplTelecom;

    # invokes: Lcom/android/systemui/statusbar/policy/NetworkControllerImplTelecom;->isCdma(I)Z
    invoke-static {v2, v0}, Lcom/android/systemui/statusbar/policy/NetworkControllerImplTelecom;->access$400(Lcom/android/systemui/statusbar/policy/NetworkControllerImplTelecom;I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 691
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImplTelecom$myPhoneStateListener;->this$0:Lcom/android/systemui/statusbar/policy/NetworkControllerImplTelecom;

    # invokes: Lcom/android/systemui/statusbar/policy/NetworkControllerImplTelecom;->updateTelephonySignalStrength(I)V
    invoke-static {v2, v0}, Lcom/android/systemui/statusbar/policy/NetworkControllerImplTelecom;->access$100(Lcom/android/systemui/statusbar/policy/NetworkControllerImplTelecom;I)V

    .line 692
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImplTelecom$myPhoneStateListener;->this$0:Lcom/android/systemui/statusbar/policy/NetworkControllerImplTelecom;

    invoke-virtual {v2, v0}, Lcom/android/systemui/statusbar/policy/NetworkControllerImplTelecom;->refreshViews(I)V

    .line 699
    :cond_0
    sget-object v2, Landroid/os/BuildExt;->CUSTOMIZE_CHINATELECOM:Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 700
    add-int/lit8 v2, v0, 0x1

    rem-int/lit8 v1, v2, 0x2

    .line 703
    .local v1, "theOtherSlot":I
    if-eqz p1, :cond_2

    .line 705
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImplTelecom$myPhoneStateListener;->this$0:Lcom/android/systemui/statusbar/policy/NetworkControllerImplTelecom;

    iput v1, v2, Lcom/android/systemui/statusbar/policy/NetworkControllerImplTelecom;->mNonCallingSlot:I

    .line 711
    :goto_0
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImplTelecom$myPhoneStateListener;->this$0:Lcom/android/systemui/statusbar/policy/NetworkControllerImplTelecom;

    # invokes: Lcom/android/systemui/statusbar/policy/NetworkControllerImplTelecom;->updateTelephonySignalStrength(I)V
    invoke-static {v2, v1}, Lcom/android/systemui/statusbar/policy/NetworkControllerImplTelecom;->access$100(Lcom/android/systemui/statusbar/policy/NetworkControllerImplTelecom;I)V

    .line 712
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImplTelecom$myPhoneStateListener;->this$0:Lcom/android/systemui/statusbar/policy/NetworkControllerImplTelecom;

    # invokes: Lcom/android/systemui/statusbar/policy/NetworkControllerImplTelecom;->updateDataNetType(I)V
    invoke-static {v2, v1}, Lcom/android/systemui/statusbar/policy/NetworkControllerImplTelecom;->access$200(Lcom/android/systemui/statusbar/policy/NetworkControllerImplTelecom;I)V

    .line 713
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImplTelecom$myPhoneStateListener;->this$0:Lcom/android/systemui/statusbar/policy/NetworkControllerImplTelecom;

    # invokes: Lcom/android/systemui/statusbar/policy/NetworkControllerImplTelecom;->updateDataIcon(I)V
    invoke-static {v2, v1}, Lcom/android/systemui/statusbar/policy/NetworkControllerImplTelecom;->access$300(Lcom/android/systemui/statusbar/policy/NetworkControllerImplTelecom;I)V

    .line 714
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImplTelecom$myPhoneStateListener;->this$0:Lcom/android/systemui/statusbar/policy/NetworkControllerImplTelecom;

    invoke-virtual {v2, v1}, Lcom/android/systemui/statusbar/policy/NetworkControllerImplTelecom;->refreshViews(I)V

    .line 717
    .end local v1    # "theOtherSlot":I
    :cond_1
    return-void

    .line 707
    .restart local v1    # "theOtherSlot":I
    :cond_2
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImplTelecom$myPhoneStateListener;->this$0:Lcom/android/systemui/statusbar/policy/NetworkControllerImplTelecom;

    const/4 v3, -0x1

    iput v3, v2, Lcom/android/systemui/statusbar/policy/NetworkControllerImplTelecom;->mNonCallingSlot:I

    .line 708
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImplTelecom$myPhoneStateListener;->this$0:Lcom/android/systemui/statusbar/policy/NetworkControllerImplTelecom;

    const/4 v3, 0x0

    iput-boolean v3, v2, Lcom/android/systemui/statusbar/policy/NetworkControllerImplTelecom;->mCallingState:Z

    goto :goto_0
.end method

.method public onDataActivity(I)V
    .locals 4
    .param p1, "direction"    # I

    .prologue
    .line 791
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImplTelecom$myPhoneStateListener;->this$0:Lcom/android/systemui/statusbar/policy/NetworkControllerImplTelecom;

    iget-object v1, v1, Lcom/android/systemui/statusbar/policy/NetworkControllerImplTelecom;->mPhoneStateListener:[Lcom/android/systemui/statusbar/policy/NetworkControllerImplTelecom$myPhoneStateListener;

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, p0}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v0

    .line 793
    .local v0, "slotId":I
    const-string v1, "StatusBar.NetworkControllerTelecom"

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

    .line 794
    const-string v1, "StatusBar.NetworkControllerTelecom"

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

    .line 796
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImplTelecom$myPhoneStateListener;->this$0:Lcom/android/systemui/statusbar/policy/NetworkControllerImplTelecom;

    # invokes: Lcom/android/systemui/statusbar/policy/NetworkControllerImplTelecom;->isValidSlotId(I)Z
    invoke-static {v1, v0}, Lcom/android/systemui/statusbar/policy/NetworkControllerImplTelecom;->access$000(Lcom/android/systemui/statusbar/policy/NetworkControllerImplTelecom;I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 797
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImplTelecom$myPhoneStateListener;->this$0:Lcom/android/systemui/statusbar/policy/NetworkControllerImplTelecom;

    iget-object v1, v1, Lcom/android/systemui/statusbar/policy/NetworkControllerImplTelecom;->mDataActivity:[I

    aput p1, v1, v0

    .line 798
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImplTelecom$myPhoneStateListener;->this$0:Lcom/android/systemui/statusbar/policy/NetworkControllerImplTelecom;

    # invokes: Lcom/android/systemui/statusbar/policy/NetworkControllerImplTelecom;->updateDataIcon(I)V
    invoke-static {v1, v0}, Lcom/android/systemui/statusbar/policy/NetworkControllerImplTelecom;->access$300(Lcom/android/systemui/statusbar/policy/NetworkControllerImplTelecom;I)V

    .line 799
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImplTelecom$myPhoneStateListener;->this$0:Lcom/android/systemui/statusbar/policy/NetworkControllerImplTelecom;

    invoke-virtual {v1, v0}, Lcom/android/systemui/statusbar/policy/NetworkControllerImplTelecom;->refreshViews(I)V

    .line 801
    :cond_0
    return-void
.end method

.method public onDataConnectionStateChanged(II)V
    .locals 5
    .param p1, "state"    # I
    .param p2, "networkType"    # I

    .prologue
    .line 721
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImplTelecom$myPhoneStateListener;->this$0:Lcom/android/systemui/statusbar/policy/NetworkControllerImplTelecom;

    iget-object v2, v2, Lcom/android/systemui/statusbar/policy/NetworkControllerImplTelecom;->mPhoneStateListener:[Lcom/android/systemui/statusbar/policy/NetworkControllerImplTelecom$myPhoneStateListener;

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, p0}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v1

    .line 723
    .local v1, "slotId":I
    const-string v2, "StatusBar.NetworkControllerTelecom"

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

    .line 724
    const-string v2, "StatusBar.NetworkControllerTelecom"

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

    .line 727
    packed-switch p1, :pswitch_data_0

    .line 744
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    .line 747
    .local v0, "s":Ljava/lang/String;
    :goto_0
    const-string v2, "StatusBar.NetworkControllerTelecom"

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

    .line 749
    packed-switch p2, :pswitch_data_1

    .line 768
    :pswitch_0
    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    .line 771
    :goto_1
    const-string v2, "StatusBar.NetworkControllerTelecom"

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

    .line 773
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImplTelecom$myPhoneStateListener;->this$0:Lcom/android/systemui/statusbar/policy/NetworkControllerImplTelecom;

    # invokes: Lcom/android/systemui/statusbar/policy/NetworkControllerImplTelecom;->isValidSlotId(I)Z
    invoke-static {v2, v1}, Lcom/android/systemui/statusbar/policy/NetworkControllerImplTelecom;->access$000(Lcom/android/systemui/statusbar/policy/NetworkControllerImplTelecom;I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 781
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImplTelecom$myPhoneStateListener;->this$0:Lcom/android/systemui/statusbar/policy/NetworkControllerImplTelecom;

    iget-object v2, v2, Lcom/android/systemui/statusbar/policy/NetworkControllerImplTelecom;->mDataState:[I

    aput p1, v2, v1

    .line 782
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImplTelecom$myPhoneStateListener;->this$0:Lcom/android/systemui/statusbar/policy/NetworkControllerImplTelecom;

    iget-object v2, v2, Lcom/android/systemui/statusbar/policy/NetworkControllerImplTelecom;->mDataNetType:[I

    aput p2, v2, v1

    .line 783
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImplTelecom$myPhoneStateListener;->this$0:Lcom/android/systemui/statusbar/policy/NetworkControllerImplTelecom;

    # invokes: Lcom/android/systemui/statusbar/policy/NetworkControllerImplTelecom;->updateDataNetType(I)V
    invoke-static {v2, v1}, Lcom/android/systemui/statusbar/policy/NetworkControllerImplTelecom;->access$200(Lcom/android/systemui/statusbar/policy/NetworkControllerImplTelecom;I)V

    .line 784
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImplTelecom$myPhoneStateListener;->this$0:Lcom/android/systemui/statusbar/policy/NetworkControllerImplTelecom;

    # invokes: Lcom/android/systemui/statusbar/policy/NetworkControllerImplTelecom;->updateDataIcon(I)V
    invoke-static {v2, v1}, Lcom/android/systemui/statusbar/policy/NetworkControllerImplTelecom;->access$300(Lcom/android/systemui/statusbar/policy/NetworkControllerImplTelecom;I)V

    .line 785
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImplTelecom$myPhoneStateListener;->this$0:Lcom/android/systemui/statusbar/policy/NetworkControllerImplTelecom;

    invoke-virtual {v2, v1}, Lcom/android/systemui/statusbar/policy/NetworkControllerImplTelecom;->refreshViews(I)V

    .line 787
    :cond_0
    return-void

    .line 729
    .end local v0    # "s":Ljava/lang/String;
    :pswitch_1
    const-string v0, "DATA_UNKNOWN"

    .line 730
    .restart local v0    # "s":Ljava/lang/String;
    goto :goto_0

    .line 732
    .end local v0    # "s":Ljava/lang/String;
    :pswitch_2
    const-string v0, "DATA_DISCONNECTED"

    .line 733
    .restart local v0    # "s":Ljava/lang/String;
    goto :goto_0

    .line 735
    .end local v0    # "s":Ljava/lang/String;
    :pswitch_3
    const-string v0, "DATA_CONNECTING"

    .line 736
    .restart local v0    # "s":Ljava/lang/String;
    goto :goto_0

    .line 738
    .end local v0    # "s":Ljava/lang/String;
    :pswitch_4
    const-string v0, "DATA_CONNECTED"

    .line 739
    .restart local v0    # "s":Ljava/lang/String;
    goto :goto_0

    .line 741
    .end local v0    # "s":Ljava/lang/String;
    :pswitch_5
    const-string v0, "DATA_SUSPENDED"

    .line 742
    .restart local v0    # "s":Ljava/lang/String;
    goto :goto_0

    .line 751
    :pswitch_6
    const-string v0, "NETWORK_TYPE_UNKNOWN"

    .line 752
    goto :goto_1

    .line 755
    :pswitch_7
    const-string v0, "NETWORK_TYPE_2G"

    .line 756
    goto :goto_1

    .line 762
    :pswitch_8
    const-string v0, "NETWORK_TYPE_3G"

    .line 763
    goto :goto_1

    .line 765
    :pswitch_9
    const-string v0, "NETWORK_TYPE_4G"

    .line 766
    goto :goto_1

    .line 727
    nop

    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch

    .line 749
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

    .line 615
    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImplTelecom$myPhoneStateListener;->this$0:Lcom/android/systemui/statusbar/policy/NetworkControllerImplTelecom;

    iget-object v5, v5, Lcom/android/systemui/statusbar/policy/NetworkControllerImplTelecom;->mPhoneStateListener:[Lcom/android/systemui/statusbar/policy/NetworkControllerImplTelecom$myPhoneStateListener;

    invoke-static {v5}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, p0}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v3

    .line 617
    .local v3, "slotId":I
    const-string v5, "StatusBar.NetworkControllerTelecom"

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

    .line 618
    const-string v5, "StatusBar.NetworkControllerTelecom"

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

    .line 627
    const-string v2, "UNKNOW STATE..."

    .line 629
    .local v2, "s":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getState()I

    move-result v5

    packed-switch v5, :pswitch_data_0

    .line 644
    :goto_0
    const-string v5, "StatusBar.NetworkControllerTelecom"

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

    .line 647
    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImplTelecom$myPhoneStateListener;->this$0:Lcom/android/systemui/statusbar/policy/NetworkControllerImplTelecom;

    # invokes: Lcom/android/systemui/statusbar/policy/NetworkControllerImplTelecom;->isValidSlotId(I)Z
    invoke-static {v5, v3}, Lcom/android/systemui/statusbar/policy/NetworkControllerImplTelecom;->access$000(Lcom/android/systemui/statusbar/policy/NetworkControllerImplTelecom;I)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 648
    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImplTelecom$myPhoneStateListener;->this$0:Lcom/android/systemui/statusbar/policy/NetworkControllerImplTelecom;

    iget-object v5, v5, Lcom/android/systemui/statusbar/policy/NetworkControllerImplTelecom;->mServiceState:[Landroid/telephony/ServiceState;

    aput-object p1, v5, v3

    .line 649
    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getVoiceRegState()I

    move-result v5

    if-ne v5, v8, :cond_0

    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getDataRegState()I

    move-result v5

    if-ne v5, v8, :cond_0

    .line 656
    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImplTelecom$myPhoneStateListener;->this$0:Lcom/android/systemui/statusbar/policy/NetworkControllerImplTelecom;

    iget-object v5, v5, Lcom/android/systemui/statusbar/policy/NetworkControllerImplTelecom;->mDataNetType:[I

    const/4 v6, 0x0

    aput v6, v5, v3

    .line 664
    :cond_0
    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getVoiceNetworkType()I

    move-result v4

    .line 665
    .local v4, "voiceNetType":I
    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getDataNetworkType()I

    move-result v1

    .line 666
    .local v1, "dataNetType":I
    if-nez v1, :cond_3

    move v0, v4

    .line 669
    .local v0, "chosenNetType":I
    :goto_1
    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImplTelecom$myPhoneStateListener;->this$0:Lcom/android/systemui/statusbar/policy/NetworkControllerImplTelecom;

    iget-object v5, v5, Lcom/android/systemui/statusbar/policy/NetworkControllerImplTelecom;->mDataNetType:[I

    aget v5, v5, v3

    if-eq v0, v5, :cond_1

    .line 670
    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImplTelecom$myPhoneStateListener;->this$0:Lcom/android/systemui/statusbar/policy/NetworkControllerImplTelecom;

    iget-object v5, v5, Lcom/android/systemui/statusbar/policy/NetworkControllerImplTelecom;->mDataNetType:[I

    aput v0, v5, v3

    .line 672
    :cond_1
    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImplTelecom$myPhoneStateListener;->this$0:Lcom/android/systemui/statusbar/policy/NetworkControllerImplTelecom;

    invoke-virtual {v5, v3}, Lcom/android/systemui/statusbar/policy/NetworkControllerImplTelecom;->updateServiceState(I)V

    .line 673
    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImplTelecom$myPhoneStateListener;->this$0:Lcom/android/systemui/statusbar/policy/NetworkControllerImplTelecom;

    # invokes: Lcom/android/systemui/statusbar/policy/NetworkControllerImplTelecom;->updateTelephonySignalStrength(I)V
    invoke-static {v5, v3}, Lcom/android/systemui/statusbar/policy/NetworkControllerImplTelecom;->access$100(Lcom/android/systemui/statusbar/policy/NetworkControllerImplTelecom;I)V

    .line 674
    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImplTelecom$myPhoneStateListener;->this$0:Lcom/android/systemui/statusbar/policy/NetworkControllerImplTelecom;

    # invokes: Lcom/android/systemui/statusbar/policy/NetworkControllerImplTelecom;->updateDataNetType(I)V
    invoke-static {v5, v3}, Lcom/android/systemui/statusbar/policy/NetworkControllerImplTelecom;->access$200(Lcom/android/systemui/statusbar/policy/NetworkControllerImplTelecom;I)V

    .line 675
    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImplTelecom$myPhoneStateListener;->this$0:Lcom/android/systemui/statusbar/policy/NetworkControllerImplTelecom;

    # invokes: Lcom/android/systemui/statusbar/policy/NetworkControllerImplTelecom;->updateDataIcon(I)V
    invoke-static {v5, v3}, Lcom/android/systemui/statusbar/policy/NetworkControllerImplTelecom;->access$300(Lcom/android/systemui/statusbar/policy/NetworkControllerImplTelecom;I)V

    .line 676
    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImplTelecom$myPhoneStateListener;->this$0:Lcom/android/systemui/statusbar/policy/NetworkControllerImplTelecom;

    invoke-virtual {v5, v3}, Lcom/android/systemui/statusbar/policy/NetworkControllerImplTelecom;->refreshViews(I)V

    .line 678
    .end local v0    # "chosenNetType":I
    .end local v1    # "dataNetType":I
    .end local v4    # "voiceNetType":I
    :cond_2
    return-void

    .line 631
    :pswitch_0
    const-string v2, "STATE_IN_SERVICE"

    .line 632
    goto :goto_0

    .line 634
    :pswitch_1
    const-string v2, "STATE_OUT_OF_SERVICE"

    .line 635
    goto :goto_0

    .line 637
    :pswitch_2
    const-string v2, "STATE_EMERGENCY_ONLY"

    .line 638
    goto :goto_0

    .line 640
    :pswitch_3
    const-string v2, "STATE_POWER_OFF"

    goto :goto_0

    .restart local v1    # "dataNetType":I
    .restart local v4    # "voiceNetType":I
    :cond_3
    move v0, v1

    .line 666
    goto :goto_1

    .line 629
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public onSignalStrengthsChanged(Landroid/telephony/SignalStrength;)V
    .locals 5
    .param p1, "signalStrength"    # Landroid/telephony/SignalStrength;

    .prologue
    .line 600
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImplTelecom$myPhoneStateListener;->this$0:Lcom/android/systemui/statusbar/policy/NetworkControllerImplTelecom;

    iget-object v1, v1, Lcom/android/systemui/statusbar/policy/NetworkControllerImplTelecom;->mPhoneStateListener:[Lcom/android/systemui/statusbar/policy/NetworkControllerImplTelecom$myPhoneStateListener;

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, p0}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v0

    .line 602
    .local v0, "slotId":I
    const-string v1, "StatusBar.NetworkControllerTelecom"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "PhoneStateListener:onSignalStrengthsChanged, sim"

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

    .line 603
    const-string v2, "StatusBar.NetworkControllerTelecom"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "PhoneStateListener:onSignalStrengthsChanged signalStrength="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    if-nez p1, :cond_1

    const-string v1, ""

    :goto_0
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 606
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImplTelecom$myPhoneStateListener;->this$0:Lcom/android/systemui/statusbar/policy/NetworkControllerImplTelecom;

    # invokes: Lcom/android/systemui/statusbar/policy/NetworkControllerImplTelecom;->isValidSlotId(I)Z
    invoke-static {v1, v0}, Lcom/android/systemui/statusbar/policy/NetworkControllerImplTelecom;->access$000(Lcom/android/systemui/statusbar/policy/NetworkControllerImplTelecom;I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 607
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImplTelecom$myPhoneStateListener;->this$0:Lcom/android/systemui/statusbar/policy/NetworkControllerImplTelecom;

    iget-object v1, v1, Lcom/android/systemui/statusbar/policy/NetworkControllerImplTelecom;->mSignalStrength:[Landroid/telephony/SignalStrength;

    aput-object p1, v1, v0

    .line 608
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImplTelecom$myPhoneStateListener;->this$0:Lcom/android/systemui/statusbar/policy/NetworkControllerImplTelecom;

    # invokes: Lcom/android/systemui/statusbar/policy/NetworkControllerImplTelecom;->updateTelephonySignalStrength(I)V
    invoke-static {v1, v0}, Lcom/android/systemui/statusbar/policy/NetworkControllerImplTelecom;->access$100(Lcom/android/systemui/statusbar/policy/NetworkControllerImplTelecom;I)V

    .line 609
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImplTelecom$myPhoneStateListener;->this$0:Lcom/android/systemui/statusbar/policy/NetworkControllerImplTelecom;

    invoke-virtual {v1, v0}, Lcom/android/systemui/statusbar/policy/NetworkControllerImplTelecom;->refreshViews(I)V

    .line 611
    :cond_0
    return-void

    .line 603
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " level="

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/telephony/SignalStrength;->getLevel()I

    move-result v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

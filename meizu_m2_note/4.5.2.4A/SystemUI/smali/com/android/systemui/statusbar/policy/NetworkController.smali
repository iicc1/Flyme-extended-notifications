.class public interface abstract Lcom/android/systemui/statusbar/policy/NetworkController;
.super Ljava/lang/Object;
.source "NetworkController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/statusbar/policy/NetworkController$NetworkSignalChangedCallback;,
        Lcom/android/systemui/statusbar/policy/NetworkController$SignalCluster;
    }
.end annotation


# virtual methods
.method public abstract addCombinedLabelView(Landroid/widget/TextView;)V
.end method

.method public abstract addConnectionRateView(Lcom/android/systemui/statusbar/ConnectionRateView;)V
.end method

.method public abstract addEmergencyLabelView(Landroid/widget/TextView;)V
.end method

.method public abstract addMobileLabelView(Landroid/widget/TextView;)V
.end method

.method public abstract addNetworkSignalChangedCallback(Lcom/android/systemui/statusbar/policy/NetworkController$NetworkSignalChangedCallback;)V
.end method

.method public abstract addSignalCluster(Lcom/android/systemui/statusbar/policy/NetworkController$SignalCluster;)V
.end method

.method public abstract dispatchDemoCommand(Ljava/lang/String;Landroid/os/Bundle;)V
.end method

.method public abstract dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
.end method

.method public abstract hasMobileDataFeature()Z
.end method

.method public abstract hasVoiceCallingFeature(I)Z
.end method

.method public abstract onLidSwitchChanged(Z)V
.end method

.method public abstract setCarrierGemini(Lcom/android/systemui/statusbar/CarrierLabel;Lcom/android/systemui/statusbar/CarrierLabel;Landroid/view/View;)V
.end method

.method public abstract setStatusViewGemini(Landroid/view/ViewGroup;Lcom/android/systemui/statusbar/CarrierLabel;Lcom/android/systemui/statusbar/CarrierLabel;Landroid/view/View;)V
.end method

.method public abstract updateKeyguardStatusBarView(Z)V
.end method

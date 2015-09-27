.class Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/HotspotShortCut$3;
.super Landroid/database/ContentObserver;
.source "HotspotShortCut.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/HotspotShortCut;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/HotspotShortCut;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/HotspotShortCut;Landroid/os/Handler;)V
    .locals 0
    .param p2, "x0"    # Landroid/os/Handler;

    .prologue
    .line 175
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/HotspotShortCut$3;->this$0:Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/HotspotShortCut;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 4
    .param p1, "selfChange"    # Z

    .prologue
    const/4 v3, 0x1

    .line 178
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/HotspotShortCut$3;->this$0:Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/HotspotShortCut;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/HotspotShortCut$3;->this$0:Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/HotspotShortCut;

    # invokes: Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/HotspotShortCut;->isTetherEnabled()Z
    invoke-static {v1}, Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/HotspotShortCut;->access$400(Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/HotspotShortCut;)Z

    move-result v1

    # setter for: Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/HotspotShortCut;->mIsTetherEnabled:Z
    invoke-static {v0, v1}, Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/HotspotShortCut;->access$302(Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/HotspotShortCut;Z)Z

    .line 179
    const-string v1, "HotspotShortCut"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "tether enabled: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/HotspotShortCut$3;->this$0:Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/HotspotShortCut;

    # getter for: Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/HotspotShortCut;->mIsTetherEnabled:Z
    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/HotspotShortCut;->access$300(Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/HotspotShortCut;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "true"

    :goto_0
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 181
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/HotspotShortCut$3;->this$0:Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/HotspotShortCut;

    const v1, 0x3e4ccccd    # 0.2f

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/HotspotShortCut;->setViewAlpha(F)V

    .line 182
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/HotspotShortCut$3;->this$0:Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/HotspotShortCut;

    # getter for: Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/HotspotShortCut;->mIsTetherEnabled:Z
    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/HotspotShortCut;->access$300(Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/HotspotShortCut;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 183
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/HotspotShortCut$3;->this$0:Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/HotspotShortCut;

    # getter for: Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/HotspotShortCut;->mRadarIcon:Lcom/android/systemui/statusbar/phone/widgetnew/RadarAnimationIconView;
    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/HotspotShortCut;->access$100(Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/HotspotShortCut;)Lcom/android/systemui/statusbar/phone/widgetnew/RadarAnimationIconView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/widgetnew/RadarAnimationIconView;->setVisibility(I)V

    .line 184
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/HotspotShortCut$3;->this$0:Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/HotspotShortCut;

    # getter for: Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/HotspotShortCut;->mRadarIcon:Lcom/android/systemui/statusbar/phone/widgetnew/RadarAnimationIconView;
    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/HotspotShortCut;->access$100(Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/HotspotShortCut;)Lcom/android/systemui/statusbar/phone/widgetnew/RadarAnimationIconView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/widgetnew/RadarAnimationIconView;->start()V

    .line 196
    :goto_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/HotspotShortCut$3;->this$0:Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/HotspotShortCut;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/HotspotShortCut;->onStateChange()V

    .line 197
    return-void

    .line 179
    :cond_0
    const-string v0, "false"

    goto :goto_0

    .line 190
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/HotspotShortCut$3;->this$0:Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/HotspotShortCut;

    # getter for: Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/HotspotShortCut;->mRadarIcon:Lcom/android/systemui/statusbar/phone/widgetnew/RadarAnimationIconView;
    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/HotspotShortCut;->access$100(Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/HotspotShortCut;)Lcom/android/systemui/statusbar/phone/widgetnew/RadarAnimationIconView;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/widgetnew/RadarAnimationIconView;->setVisibility(I)V

    .line 192
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/HotspotShortCut$3;->this$0:Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/HotspotShortCut;

    # setter for: Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/HotspotShortCut;->mIsInProgress:Z
    invoke-static {v0, v3}, Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/HotspotShortCut;->access$202(Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/HotspotShortCut;Z)Z

    .line 193
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/HotspotShortCut$3;->this$0:Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/HotspotShortCut;

    # getter for: Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/HotspotShortCut;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/HotspotShortCut;->access$500(Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/HotspotShortCut;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/HotspotShortCut$3;->this$0:Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/HotspotShortCut;

    # getter for: Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/HotspotShortCut;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/HotspotShortCut;->access$500(Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/HotspotShortCut;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    const-wide/16 v2, 0xbb8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_1
.end method

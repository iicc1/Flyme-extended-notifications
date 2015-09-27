.class Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/WiFiShortCut$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source "WiFiShortCut.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/WiFiShortCut;->onCreateView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/WiFiShortCut;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/WiFiShortCut;)V
    .locals 0

    .prologue
    .line 82
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/WiFiShortCut$1;->this$0:Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/WiFiShortCut;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 4
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    const v3, 0x3e4ccccd    # 0.2f

    .line 86
    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationRepeat(Landroid/animation/Animator;)V

    .line 90
    const/4 v1, 0x2

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/WiFiShortCut$1;->this$0:Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/WiFiShortCut;

    # getter for: Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/WiFiShortCut;->mWifiManager:Landroid/net/wifi/WifiManager;
    invoke-static {v2}, Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/WiFiShortCut;->access$000(Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/WiFiShortCut;)Landroid/net/wifi/WifiManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/wifi/WifiManager;->getWifiState()I

    move-result v2

    if-eq v1, v2, :cond_0

    .line 91
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/WiFiShortCut$1;->this$0:Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/WiFiShortCut;

    # getter for: Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/WiFiShortCut;->mRadarIcon:Lcom/android/systemui/statusbar/phone/widgetnew/RadarAnimationIconView;
    invoke-static {v1}, Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/WiFiShortCut;->access$100(Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/WiFiShortCut;)Lcom/android/systemui/statusbar/phone/widgetnew/RadarAnimationIconView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/widgetnew/RadarAnimationIconView;->cancel()V

    .line 92
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/WiFiShortCut$1;->this$0:Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/WiFiShortCut;

    # getter for: Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/WiFiShortCut;->mRadarIcon:Lcom/android/systemui/statusbar/phone/widgetnew/RadarAnimationIconView;
    invoke-static {v1}, Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/WiFiShortCut;->access$100(Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/WiFiShortCut;)Lcom/android/systemui/statusbar/phone/widgetnew/RadarAnimationIconView;

    move-result-object v1

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Lcom/android/systemui/statusbar/phone/widgetnew/RadarAnimationIconView;->setVisibility(I)V

    .line 97
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/WiFiShortCut$1;->this$0:Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/WiFiShortCut;

    # getter for: Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/WiFiShortCut;->mWifiManager:Landroid/net/wifi/WifiManager;
    invoke-static {v1}, Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/WiFiShortCut;->access$000(Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/WiFiShortCut;)Landroid/net/wifi/WifiManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->getWifiState()I

    move-result v0

    .line 98
    .local v0, "state":I
    packed-switch v0, :pswitch_data_0

    .line 114
    .end local v0    # "state":I
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 100
    .restart local v0    # "state":I
    :pswitch_1
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/WiFiShortCut$1;->this$0:Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/WiFiShortCut;

    invoke-virtual {v1, v3}, Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/WiFiShortCut;->setViewAlpha(F)V

    goto :goto_0

    .line 103
    :pswitch_2
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/WiFiShortCut$1;->this$0:Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/WiFiShortCut;

    const v2, 0x3f4ccccd    # 0.8f

    invoke-virtual {v1, v2}, Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/WiFiShortCut;->setViewAlpha(F)V

    goto :goto_0

    .line 106
    :pswitch_3
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/WiFiShortCut$1;->this$0:Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/WiFiShortCut;

    invoke-virtual {v1, v3}, Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/WiFiShortCut;->setViewAlpha(F)V

    goto :goto_0

    .line 98
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_0
    .end packed-switch
.end method

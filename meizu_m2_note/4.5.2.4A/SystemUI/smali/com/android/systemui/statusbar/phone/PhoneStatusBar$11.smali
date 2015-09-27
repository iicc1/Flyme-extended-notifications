.class Lcom/android/systemui/statusbar/phone/PhoneStatusBar$11;
.super Landroid/animation/AnimatorListenerAdapter;
.source "PhoneStatusBar.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->makeStatusBarView()Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)V
    .locals 0

    .prologue
    .line 1026
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$11;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 1029
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$11;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    iget-object v0, v1, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mClearButton:Landroid/view/View;

    check-cast v0, Lcom/android/systemui/statusbar/phone/ClearAllNotificationIconView;

    .line 1031
    .local v0, "clearButton":Lcom/android/systemui/statusbar/phone/ClearAllNotificationIconView;
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/ClearAllNotificationIconView;->restore()V

    .line 1033
    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/ClearAllNotificationIconView;->setVisibility(I)V

    .line 1034
    return-void
.end method

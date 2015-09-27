.class Lcom/android/systemui/statusbar/phone/PhoneStatusBar$64;
.super Landroid/animation/AnimatorListenerAdapter;
.source "PhoneStatusBar.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->AnimateExpandWidgets(F)V
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
    .line 8276
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$64;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 8278
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$64;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mWidgetsFullyExpanded:Z

    .line 8279
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$64;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mScrollView:Lcom/android/systemui/statusbar/phone/PanelScrollView;

    const/16 v1, 0x21

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/PanelScrollView;->fullScroll(I)Z

    .line 8281
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$64;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mExpandWidgetsButton:Lcom/android/systemui/statusbar/phone/MorphIconView;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/MorphIconView;->setProgress(F)V

    .line 8282
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$64;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mExpandOrCollapseWidgetAnimator:Landroid/animation/ValueAnimator;

    .line 8283
    return-void
.end method

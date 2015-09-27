.class Lcom/android/systemui/NotificationRowSwipeHelper$7;
.super Landroid/animation/AnimatorListenerAdapter;
.source "NotificationRowSwipeHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/NotificationRowSwipeHelper;->snapChild(Landroid/view/View;Landroid/view/View;FF)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/NotificationRowSwipeHelper;

.field final synthetic val$canAnimViewBeDismissed:Z

.field final synthetic val$view:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/android/systemui/NotificationRowSwipeHelper;Landroid/view/View;Z)V
    .locals 0

    .prologue
    .line 408
    iput-object p1, p0, Lcom/android/systemui/NotificationRowSwipeHelper$7;->this$0:Lcom/android/systemui/NotificationRowSwipeHelper;

    iput-object p2, p0, Lcom/android/systemui/NotificationRowSwipeHelper$7;->val$view:Landroid/view/View;

    iput-boolean p3, p0, Lcom/android/systemui/NotificationRowSwipeHelper$7;->val$canAnimViewBeDismissed:Z

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 3
    .param p1, "animator"    # Landroid/animation/Animator;

    .prologue
    .line 410
    iget-object v0, p0, Lcom/android/systemui/NotificationRowSwipeHelper$7;->this$0:Lcom/android/systemui/NotificationRowSwipeHelper;

    iget-object v1, p0, Lcom/android/systemui/NotificationRowSwipeHelper$7;->val$view:Landroid/view/View;

    iget-boolean v2, p0, Lcom/android/systemui/NotificationRowSwipeHelper$7;->val$canAnimViewBeDismissed:Z

    # invokes: Lcom/android/systemui/NotificationRowSwipeHelper;->updateAlphaFromOffset(Landroid/view/View;Z)V
    invoke-static {v0, v1, v2}, Lcom/android/systemui/NotificationRowSwipeHelper;->access$400(Lcom/android/systemui/NotificationRowSwipeHelper;Landroid/view/View;Z)V

    .line 411
    return-void
.end method

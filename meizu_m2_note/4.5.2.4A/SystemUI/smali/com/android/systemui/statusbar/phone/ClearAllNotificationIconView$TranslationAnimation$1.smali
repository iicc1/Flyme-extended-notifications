.class Lcom/android/systemui/statusbar/phone/ClearAllNotificationIconView$TranslationAnimation$1;
.super Ljava/lang/Object;
.source "ClearAllNotificationIconView.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/phone/ClearAllNotificationIconView$TranslationAnimation;->setup()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/systemui/statusbar/phone/ClearAllNotificationIconView$TranslationAnimation;

.field final synthetic val$shapeHolder:Lcom/android/systemui/statusbar/phone/ClearAllNotificationIconView$ShapeHolder;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/phone/ClearAllNotificationIconView$TranslationAnimation;Lcom/android/systemui/statusbar/phone/ClearAllNotificationIconView$ShapeHolder;)V
    .locals 0

    .prologue
    .line 418
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/ClearAllNotificationIconView$TranslationAnimation$1;->this$1:Lcom/android/systemui/statusbar/phone/ClearAllNotificationIconView$TranslationAnimation;

    iput-object p2, p0, Lcom/android/systemui/statusbar/phone/ClearAllNotificationIconView$TranslationAnimation$1;->val$shapeHolder:Lcom/android/systemui/statusbar/phone/ClearAllNotificationIconView$ShapeHolder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/ValueAnimator;

    .prologue
    .line 421
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/ClearAllNotificationIconView$TranslationAnimation$1;->val$shapeHolder:Lcom/android/systemui/statusbar/phone/ClearAllNotificationIconView$ShapeHolder;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v1, v0}, Lcom/android/systemui/statusbar/phone/ClearAllNotificationIconView$ShapeHolder;->setX(I)V

    .line 422
    return-void
.end method
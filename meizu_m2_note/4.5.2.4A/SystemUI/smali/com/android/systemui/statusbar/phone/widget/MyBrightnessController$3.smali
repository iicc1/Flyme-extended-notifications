.class Lcom/android/systemui/statusbar/phone/widget/MyBrightnessController$3;
.super Ljava/lang/Object;
.source "MyBrightnessController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/phone/widget/MyBrightnessController;->onProgressChanged(Landroid/widget/SeekBar;IZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/phone/widget/MyBrightnessController;

.field final synthetic val$adj:F


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/phone/widget/MyBrightnessController;F)V
    .locals 0

    .prologue
    .line 269
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/widget/MyBrightnessController$3;->this$0:Lcom/android/systemui/statusbar/phone/widget/MyBrightnessController;

    iput p2, p0, Lcom/android/systemui/statusbar/phone/widget/MyBrightnessController$3;->val$adj:F

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 271
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/widget/MyBrightnessController$3;->this$0:Lcom/android/systemui/statusbar/phone/widget/MyBrightnessController;

    # getter for: Lcom/android/systemui/statusbar/phone/widget/MyBrightnessController;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/widget/MyBrightnessController;->access$400(Lcom/android/systemui/statusbar/phone/widget/MyBrightnessController;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "screen_auto_brightness_adj"

    iget v2, p0, Lcom/android/systemui/statusbar/phone/widget/MyBrightnessController$3;->val$adj:F

    const/4 v3, -0x2

    invoke-static {v0, v1, v2, v3}, Landroid/provider/Settings$System;->putFloatForUser(Landroid/content/ContentResolver;Ljava/lang/String;FI)Z

    .line 274
    return-void
.end method

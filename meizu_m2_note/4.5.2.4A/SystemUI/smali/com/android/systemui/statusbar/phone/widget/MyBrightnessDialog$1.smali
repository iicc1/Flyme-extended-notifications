.class Lcom/android/systemui/statusbar/phone/widget/MyBrightnessDialog$1;
.super Ljava/lang/Object;
.source "MyBrightnessDialog.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/phone/widget/MyBrightnessDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/phone/widget/MyBrightnessDialog;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/phone/widget/MyBrightnessDialog;)V
    .locals 0

    .prologue
    .line 29
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/widget/MyBrightnessDialog$1;->this$0:Lcom/android/systemui/statusbar/phone/widget/MyBrightnessDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 31
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/widget/MyBrightnessDialog$1;->this$0:Lcom/android/systemui/statusbar/phone/widget/MyBrightnessDialog;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/widget/MyBrightnessDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 32
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/widget/MyBrightnessDialog$1;->this$0:Lcom/android/systemui/statusbar/phone/widget/MyBrightnessDialog;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/widget/MyBrightnessDialog;->dismiss()V

    .line 34
    :cond_0
    return-void
.end method

.class Lcom/android/systemui/statusbar/phone/PhoneStatusBar$36$1$2;
.super Ljava/lang/Object;
.source "PhoneStatusBar.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/phone/PhoneStatusBar$36$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/android/systemui/statusbar/phone/PhoneStatusBar$36$1;

.field final synthetic val$_v:Landroid/view/View;

.field final synthetic val$velocity:I


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/phone/PhoneStatusBar$36$1;Landroid/view/View;I)V
    .locals 0

    .prologue
    .line 3945
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$36$1$2;->this$2:Lcom/android/systemui/statusbar/phone/PhoneStatusBar$36$1;

    iput-object p2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$36$1$2;->val$_v:Landroid/view/View;

    iput p3, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$36$1$2;->val$velocity:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 3956
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$36$1$2;->this$2:Lcom/android/systemui/statusbar/phone/PhoneStatusBar$36$1;

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$36$1;->this$1:Lcom/android/systemui/statusbar/phone/PhoneStatusBar$36;

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$36;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    # getter for: Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mPile:Lcom/android/systemui/statusbar/policy/NotificationRowLayout;
    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->access$4600(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)Lcom/android/systemui/statusbar/policy/NotificationRowLayout;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$36$1$2;->val$_v:Landroid/view/View;

    iget v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$36$1$2;->val$velocity:I

    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/statusbar/policy/NotificationRowLayout;->dismissRowAnimated(Landroid/view/View;I)V

    .line 3957
    return-void
.end method

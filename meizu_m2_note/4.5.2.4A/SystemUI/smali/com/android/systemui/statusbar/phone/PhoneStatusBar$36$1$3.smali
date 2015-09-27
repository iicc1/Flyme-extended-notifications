.class Lcom/android/systemui/statusbar/phone/PhoneStatusBar$36$1$3;
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

.field final synthetic val$totalDelayForRunnable:J


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/phone/PhoneStatusBar$36$1;J)V
    .locals 0

    .prologue
    .line 3972
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$36$1$3;->this$2:Lcom/android/systemui/statusbar/phone/PhoneStatusBar$36$1;

    iput-wide p2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$36$1$3;->val$totalDelayForRunnable:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 3975
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$36$1$3;->this$2:Lcom/android/systemui/statusbar/phone/PhoneStatusBar$36$1;

    iget-object v1, v1, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$36$1;->this$1:Lcom/android/systemui/statusbar/phone/PhoneStatusBar$36;

    iget-object v1, v1, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$36;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    iget-object v0, v1, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mClearButton:Landroid/view/View;

    check-cast v0, Lcom/android/systemui/statusbar/phone/ClearAllNotificationIconView;

    .line 3977
    .local v0, "clearButton":Lcom/android/systemui/statusbar/phone/ClearAllNotificationIconView;
    iget-wide v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$36$1$3;->val$totalDelayForRunnable:J

    invoke-virtual {v0, v2, v3}, Lcom/android/systemui/statusbar/phone/ClearAllNotificationIconView;->setDuration(J)V

    .line 3979
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/ClearAllNotificationIconView;->start()V

    .line 3980
    return-void
.end method

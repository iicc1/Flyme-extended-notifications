.class Lcom/android/systemui/statusbar/phone/PhoneStatusBar$NotificationClicker$1;
.super Ljava/lang/Object;
.source "PhoneStatusBar.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/phone/PhoneStatusBar$NotificationClicker;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/systemui/statusbar/phone/PhoneStatusBar$NotificationClicker;

.field final synthetic val$v:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/phone/PhoneStatusBar$NotificationClicker;Landroid/view/View;)V
    .locals 0

    .prologue
    .line 5665
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$NotificationClicker$1;->this$1:Lcom/android/systemui/statusbar/phone/PhoneStatusBar$NotificationClicker;

    iput-object p2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$NotificationClicker$1;->val$v:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 10

    .prologue
    const/4 v9, 0x1

    const/4 v7, 0x0

    .line 5669
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$NotificationClicker$1;->this$1:Lcom/android/systemui/statusbar/phone/PhoneStatusBar$NotificationClicker;

    # getter for: Lcom/android/systemui/statusbar/phone/PhoneStatusBar$NotificationClicker;->mIntent:Landroid/app/PendingIntent;
    invoke-static {v4}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$NotificationClicker;->access$7400(Lcom/android/systemui/statusbar/phone/PhoneStatusBar$NotificationClicker;)Landroid/app/PendingIntent;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 5670
    const/4 v4, 0x2

    new-array v3, v4, [I

    .line 5671
    .local v3, "pos":[I
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$NotificationClicker$1;->val$v:Landroid/view/View;

    invoke-virtual {v4, v3}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 5672
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 5673
    .local v2, "overlay":Landroid/content/Intent;
    new-instance v4, Landroid/graphics/Rect;

    aget v5, v3, v7

    aget v6, v3, v9

    aget v7, v3, v7

    iget-object v8, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$NotificationClicker$1;->val$v:Landroid/view/View;

    invoke-virtual {v8}, Landroid/view/View;->getWidth()I

    move-result v8

    add-int/2addr v7, v8

    aget v8, v3, v9

    iget-object v9, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$NotificationClicker$1;->val$v:Landroid/view/View;

    invoke-virtual {v9}, Landroid/view/View;->getHeight()I

    move-result v9

    add-int/2addr v8, v9

    invoke-direct {v4, v5, v6, v7, v8}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {v2, v4}, Landroid/content/Intent;->setSourceBounds(Landroid/graphics/Rect;)V

    .line 5676
    :try_start_0
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$NotificationClicker$1;->this$1:Lcom/android/systemui/statusbar/phone/PhoneStatusBar$NotificationClicker;

    # getter for: Lcom/android/systemui/statusbar/phone/PhoneStatusBar$NotificationClicker;->mIntent:Landroid/app/PendingIntent;
    invoke-static {v4}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$NotificationClicker;->access$7400(Lcom/android/systemui/statusbar/phone/PhoneStatusBar$NotificationClicker;)Landroid/app/PendingIntent;

    move-result-object v4

    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$NotificationClicker$1;->this$1:Lcom/android/systemui/statusbar/phone/PhoneStatusBar$NotificationClicker;

    iget-object v5, v5, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$NotificationClicker;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    iget-object v5, v5, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mContext:Landroid/content/Context;

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6, v2}, Landroid/app/PendingIntent;->send(Landroid/content/Context;ILandroid/content/Intent;)V
    :try_end_0
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_0 .. :try_end_0} :catch_0

    .line 5682
    :goto_0
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$NotificationClicker$1;->this$1:Lcom/android/systemui/statusbar/phone/PhoneStatusBar$NotificationClicker;

    iget-object v4, v4, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$NotificationClicker;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    iget-object v4, v4, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mContext:Landroid/content/Context;

    const-string v5, "keyguard"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/KeyguardManager;

    .line 5684
    .local v1, "kgm":Landroid/app/KeyguardManager;
    if-eqz v1, :cond_0

    const/4 v4, 0x0

    invoke-virtual {v1, v4}, Landroid/app/KeyguardManager;->exitKeyguardSecurely(Landroid/app/KeyguardManager$OnKeyguardExitResult;)V

    .line 5688
    .end local v1    # "kgm":Landroid/app/KeyguardManager;
    .end local v2    # "overlay":Landroid/content/Intent;
    .end local v3    # "pos":[I
    :cond_0
    :try_start_1
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$NotificationClicker$1;->this$1:Lcom/android/systemui/statusbar/phone/PhoneStatusBar$NotificationClicker;

    iget-object v4, v4, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$NotificationClicker;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    # getter for: Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mBarService:Lcom/android/internal/statusbar/IStatusBarService;
    invoke-static {v4}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->access$7600(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)Lcom/android/internal/statusbar/IStatusBarService;

    move-result-object v4

    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$NotificationClicker$1;->this$1:Lcom/android/systemui/statusbar/phone/PhoneStatusBar$NotificationClicker;

    # getter for: Lcom/android/systemui/statusbar/phone/PhoneStatusBar$NotificationClicker;->mNotificationKey:Ljava/lang/String;
    invoke-static {v5}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$NotificationClicker;->access$7500(Lcom/android/systemui/statusbar/phone/PhoneStatusBar$NotificationClicker;)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Lcom/android/internal/statusbar/IStatusBarService;->onNotificationClick(Ljava/lang/String;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    .line 5693
    :goto_1
    return-void

    .line 5677
    .restart local v2    # "overlay":Landroid/content/Intent;
    .restart local v3    # "pos":[I
    :catch_0
    move-exception v0

    .line 5679
    .local v0, "e":Landroid/app/PendingIntent$CanceledException;
    const-string v4, "PhoneStatusBar"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Sending contentIntent failed: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 5689
    .end local v0    # "e":Landroid/app/PendingIntent$CanceledException;
    .end local v2    # "overlay":Landroid/content/Intent;
    .end local v3    # "pos":[I
    :catch_1
    move-exception v4

    goto :goto_1
.end method

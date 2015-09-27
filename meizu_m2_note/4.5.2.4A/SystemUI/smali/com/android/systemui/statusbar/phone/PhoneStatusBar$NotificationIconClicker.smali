.class Lcom/android/systemui/statusbar/phone/PhoneStatusBar$NotificationIconClicker;
.super Ljava/lang/Object;
.source "PhoneStatusBar.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/phone/PhoneStatusBar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "NotificationIconClicker"
.end annotation


# instance fields
.field private mId:I

.field private mIntent:Landroid/app/PendingIntent;

.field private mPkg:Ljava/lang/String;

.field private mTag:Ljava/lang/String;

.field final synthetic this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;Landroid/app/PendingIntent;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 0
    .param p2, "intent"    # Landroid/app/PendingIntent;
    .param p3, "pkg"    # Ljava/lang/String;
    .param p4, "tag"    # Ljava/lang/String;
    .param p5, "id"    # I

    .prologue
    .line 5710
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$NotificationIconClicker;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5711
    iput-object p2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$NotificationIconClicker;->mIntent:Landroid/app/PendingIntent;

    .line 5712
    iput-object p3, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$NotificationIconClicker;->mPkg:Ljava/lang/String;

    .line 5713
    iput-object p4, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$NotificationIconClicker;->mTag:Ljava/lang/String;

    .line 5714
    iput p5, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$NotificationIconClicker;->mId:I

    .line 5715
    return-void
.end method

.method static synthetic access$7900(Lcom/android/systemui/statusbar/phone/PhoneStatusBar$NotificationIconClicker;)Landroid/app/PendingIntent;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/PhoneStatusBar$NotificationIconClicker;

    .prologue
    .line 5704
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$NotificationIconClicker;->mIntent:Landroid/app/PendingIntent;

    return-object v0
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v1, 0x0

    .line 5720
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$NotificationIconClicker;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->animateCollapsePanels(I)V

    .line 5721
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$NotificationIconClicker;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    # invokes: Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->visibilityChanged(Z)V
    invoke-static {v0, v1}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->access$7800(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;Z)V

    .line 5728
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/app/IActivityManager;->resumeAppSwitches()V

    .line 5731
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/app/IActivityManager;->keyguardWaitingForActivityDrawn()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 5736
    :goto_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$NotificationIconClicker;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    # getter for: Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mHandler:Lcom/android/systemui/statusbar/BaseStatusBar$H;
    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->access$8000(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)Lcom/android/systemui/statusbar/BaseStatusBar$H;

    move-result-object v0

    new-instance v1, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$NotificationIconClicker$1;

    invoke-direct {v1, p0, p1}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$NotificationIconClicker$1;-><init>(Lcom/android/systemui/statusbar/phone/PhoneStatusBar$NotificationIconClicker;Landroid/view/View;)V

    const-wide/16 v2, 0x12c

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/systemui/statusbar/BaseStatusBar$H;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 5762
    return-void

    .line 5732
    :catch_0
    move-exception v0

    goto :goto_0
.end method

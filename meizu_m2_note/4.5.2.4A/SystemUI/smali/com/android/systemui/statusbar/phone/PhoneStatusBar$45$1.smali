.class Lcom/android/systemui/statusbar/phone/PhoneStatusBar$45$1;
.super Ljava/lang/Object;
.source "PhoneStatusBar.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/phone/PhoneStatusBar$45;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/systemui/statusbar/phone/PhoneStatusBar$45;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/phone/PhoneStatusBar$45;)V
    .locals 0

    .prologue
    .line 5187
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$45$1;->this$1:Lcom/android/systemui/statusbar/phone/PhoneStatusBar$45;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 5191
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$45$1;->this$1:Lcom/android/systemui/statusbar/phone/PhoneStatusBar$45;

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$45;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$45$1;->this$1:Lcom/android/systemui/statusbar/phone/PhoneStatusBar$45;

    iget-object v1, v1, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$45;->val$packageName:Ljava/lang/String;

    const/4 v2, 0x0

    # invokes: Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->setNotificationsEnabled(Ljava/lang/String;Z)V
    invoke-static {v0, v1, v2}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->access$7000(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;Ljava/lang/String;Z)V

    .line 5192
    return-void
.end method

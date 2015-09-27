.class Lcom/android/systemui/statusbar/phone/PhoneStatusBar$62;
.super Ljava/lang/Object;
.source "PhoneStatusBar.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/phone/PhoneStatusBar;
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
    .line 8186
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$62;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v1, 0x0

    .line 8189
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$62;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mWidgetsFullyExpanded:Z

    if-nez v0, :cond_0

    .line 8190
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$62;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->ExpandWidgets(F)V

    .line 8194
    :goto_0
    return-void

    .line 8192
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$62;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->CollapseWidgets(F)V

    goto :goto_0
.end method

.class Lcom/android/systemui/statusbar/phone/QuickSettings$5;
.super Ljava/lang/Object;
.source "QuickSettings.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/phone/QuickSettings;->addUserTiles(Landroid/view/ViewGroup;Landroid/view/LayoutInflater;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/phone/QuickSettings;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/phone/QuickSettings;)V
    .locals 0

    .prologue
    .line 355
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/QuickSettings$5;->this$0:Lcom/android/systemui/statusbar/phone/QuickSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 358
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/QuickSettings$5;->this$0:Lcom/android/systemui/statusbar/phone/QuickSettings;

    # invokes: Lcom/android/systemui/statusbar/phone/QuickSettings;->collapsePanels()V
    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/QuickSettings;->access$400(Lcom/android/systemui/statusbar/phone/QuickSettings;)V

    .line 359
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/QuickSettings$5;->this$0:Lcom/android/systemui/statusbar/phone/QuickSettings;

    # invokes: Lcom/android/systemui/statusbar/phone/QuickSettings;->showBrightnessDialog()V
    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/QuickSettings;->access$600(Lcom/android/systemui/statusbar/phone/QuickSettings;)V

    .line 360
    return-void
.end method

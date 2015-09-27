.class Lcom/android/systemui/statusbar/phone/widget/util/MyToast$1;
.super Ljava/lang/Object;
.source "MyToast.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/phone/widget/util/MyToast;->showUntilCancel()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/phone/widget/util/MyToast;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/phone/widget/util/MyToast;)V
    .locals 0

    .prologue
    .line 74
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/widget/util/MyToast$1;->this$0:Lcom/android/systemui/statusbar/phone/widget/util/MyToast;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 76
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/widget/util/MyToast$1;->this$0:Lcom/android/systemui/statusbar/phone/widget/util/MyToast;

    # invokes: Lcom/android/systemui/statusbar/phone/widget/util/MyToast;->showUntilCancel()V
    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/widget/util/MyToast;->access$000(Lcom/android/systemui/statusbar/phone/widget/util/MyToast;)V

    .line 77
    return-void
.end method

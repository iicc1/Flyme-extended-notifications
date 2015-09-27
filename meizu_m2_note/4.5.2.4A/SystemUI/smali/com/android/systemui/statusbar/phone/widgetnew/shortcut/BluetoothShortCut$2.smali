.class Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/BluetoothShortCut$2;
.super Landroid/os/AsyncTask;
.source "BluetoothShortCut.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/BluetoothShortCut;->toggle()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/BluetoothShortCut;

.field final synthetic val$desiredState:Z


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/BluetoothShortCut;Z)V
    .locals 0

    .prologue
    .line 147
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/BluetoothShortCut$2;->this$0:Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/BluetoothShortCut;

    iput-boolean p2, p0, Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/BluetoothShortCut$2;->val$desiredState:Z

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # [Ljava/lang/Object;

    .prologue
    .line 147
    check-cast p1, [Ljava/lang/Void;

    .end local p1    # "x0":[Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/BluetoothShortCut$2;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 1
    .param p1, "args"    # [Ljava/lang/Void;

    .prologue
    .line 150
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/BluetoothShortCut$2;->val$desiredState:Z

    if-eqz v0, :cond_0

    .line 151
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/BluetoothShortCut$2;->this$0:Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/BluetoothShortCut;

    # getter for: Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/BluetoothShortCut;->mBtAdapter:Landroid/bluetooth/BluetoothAdapter;
    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/BluetoothShortCut;->access$000(Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/BluetoothShortCut;)Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->enable()Z

    .line 155
    :goto_0
    const/4 v0, 0x0

    return-object v0

    .line 153
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/BluetoothShortCut$2;->this$0:Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/BluetoothShortCut;

    # getter for: Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/BluetoothShortCut;->mBtAdapter:Landroid/bluetooth/BluetoothAdapter;
    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/BluetoothShortCut;->access$000(Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/BluetoothShortCut;)Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->disable()Z

    goto :goto_0
.end method

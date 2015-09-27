.class public Lcom/android/systemui/statusbar/phone/bluetooth/BluetoothVisibleDialog;
.super Landroid/app/AlertDialog;
.source "BluetoothVisibleDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field private mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 21
    const/4 v0, 0x5

    invoke-direct {p0, p1, v0}, Landroid/app/AlertDialog;-><init>(Landroid/content/Context;I)V

    .line 22
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/bluetooth/BluetoothVisibleDialog;->mContext:Landroid/content/Context;

    .line 24
    const/4 v0, -0x1

    const v1, 0x7f0b014e

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1, p0}, Lcom/android/systemui/statusbar/phone/bluetooth/BluetoothVisibleDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 26
    const/4 v0, -0x2

    const/high16 v1, 0x1040000

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1, p0}, Lcom/android/systemui/statusbar/phone/bluetooth/BluetoothVisibleDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 28
    const v0, 0x7f0b014d

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/bluetooth/BluetoothVisibleDialog;->setTitle(I)V

    .line 29
    const v0, 0xa020150

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/bluetooth/BluetoothVisibleDialog;->setIcon(I)V

    .line 30
    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 35
    const/4 v1, -0x1

    if-ne p2, v1, :cond_0

    .line 36
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    .line 37
    .local v0, "btAdapter":Landroid/bluetooth/BluetoothAdapter;
    const/16 v1, 0x17

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/bluetooth/BluetoothAdapter;->setScanMode(II)Z

    .line 39
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/bluetooth/BluetoothVisibleDialog;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "bluetooth_discoverability"

    const/4 v3, 0x1

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 42
    .end local v0    # "btAdapter":Landroid/bluetooth/BluetoothAdapter;
    :cond_0
    return-void
.end method

.method public show()V
    .locals 2

    .prologue
    .line 48
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/bluetooth/BluetoothVisibleDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 50
    .local v0, "lp":Landroid/view/WindowManager$LayoutParams;
    const/16 v1, 0x7de

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 51
    const v1, 0x1020300

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 56
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/bluetooth/BluetoothVisibleDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 57
    invoke-super {p0}, Landroid/app/AlertDialog;->show()V

    .line 58
    return-void
.end method

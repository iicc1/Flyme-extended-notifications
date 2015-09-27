.class Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/NfcShortCut$3;
.super Ljava/lang/Object;
.source "NfcShortCut.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/NfcShortCut;->toggle()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/NfcShortCut;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/NfcShortCut;)V
    .locals 0

    .prologue
    .line 107
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/NfcShortCut$3;->this$0:Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/NfcShortCut;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 110
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/NfcShortCut$3;->this$0:Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/NfcShortCut;

    # getter for: Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/NfcShortCut;->mNfcAdapter:Landroid/nfc/NfcAdapter;
    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/NfcShortCut;->access$000(Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/NfcShortCut;)Landroid/nfc/NfcAdapter;

    move-result-object v0

    invoke-virtual {v0}, Landroid/nfc/NfcAdapter;->disable()Z

    .line 111
    return-void
.end method

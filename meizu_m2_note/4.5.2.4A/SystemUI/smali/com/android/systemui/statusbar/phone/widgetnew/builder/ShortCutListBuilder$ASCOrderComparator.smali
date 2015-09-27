.class Lcom/android/systemui/statusbar/phone/widgetnew/builder/ShortCutListBuilder$ASCOrderComparator;
.super Ljava/lang/Object;
.source "ShortCutListBuilder.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/phone/widgetnew/builder/ShortCutListBuilder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ASCOrderComparator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lcom/android/systemui/statusbar/phone/widgetnew/IViewFragment;",
        ">;"
    }
.end annotation


# instance fields
.field private mOrderRecorder:Lcom/android/systemui/statusbar/phone/widgetnew/builder/OrderRecorder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/systemui/statusbar/phone/widgetnew/builder/OrderRecorder",
            "<",
            "Lcom/android/systemui/statusbar/phone/widgetnew/IViewFragment;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/phone/widgetnew/builder/OrderRecorder;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/systemui/statusbar/phone/widgetnew/builder/OrderRecorder",
            "<",
            "Lcom/android/systemui/statusbar/phone/widgetnew/IViewFragment;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 148
    .local p1, "orderRecorder":Lcom/android/systemui/statusbar/phone/widgetnew/builder/OrderRecorder;, "Lcom/android/systemui/statusbar/phone/widgetnew/builder/OrderRecorder<Lcom/android/systemui/statusbar/phone/widgetnew/IViewFragment;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 149
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/widgetnew/builder/ShortCutListBuilder$ASCOrderComparator;->mOrderRecorder:Lcom/android/systemui/statusbar/phone/widgetnew/builder/OrderRecorder;

    .line 150
    return-void
.end method


# virtual methods
.method public compare(Lcom/android/systemui/statusbar/phone/widgetnew/IViewFragment;Lcom/android/systemui/statusbar/phone/widgetnew/IViewFragment;)I
    .locals 4
    .param p1, "lhs"    # Lcom/android/systemui/statusbar/phone/widgetnew/IViewFragment;
    .param p2, "rhs"    # Lcom/android/systemui/statusbar/phone/widgetnew/IViewFragment;

    .prologue
    const v3, 0x7fffffff

    .line 154
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/widgetnew/builder/ShortCutListBuilder$ASCOrderComparator;->mOrderRecorder:Lcom/android/systemui/statusbar/phone/widgetnew/builder/OrderRecorder;

    .line 155
    .local v1, "orderRecorder":Lcom/android/systemui/statusbar/phone/widgetnew/builder/OrderRecorder;, "Lcom/android/systemui/statusbar/phone/widgetnew/builder/OrderRecorder<Lcom/android/systemui/statusbar/phone/widgetnew/IViewFragment;>;"
    invoke-virtual {v1, p1, v3}, Lcom/android/systemui/statusbar/phone/widgetnew/builder/OrderRecorder;->getOrder(Ljava/lang/Object;I)I

    move-result v0

    .line 156
    .local v0, "firstOrder":I
    invoke-virtual {v1, p2, v3}, Lcom/android/systemui/statusbar/phone/widgetnew/builder/OrderRecorder;->getOrder(Ljava/lang/Object;I)I

    move-result v2

    .line 158
    .local v2, "secondOrder":I
    if-le v0, v2, :cond_0

    .line 159
    const/4 v3, 0x1

    .line 165
    :goto_0
    return v3

    .line 161
    :cond_0
    if-ge v0, v2, :cond_1

    .line 162
    const/4 v3, -0x1

    goto :goto_0

    .line 165
    :cond_1
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;
    .param p2, "x1"    # Ljava/lang/Object;

    .prologue
    .line 145
    check-cast p1, Lcom/android/systemui/statusbar/phone/widgetnew/IViewFragment;

    .end local p1    # "x0":Ljava/lang/Object;
    check-cast p2, Lcom/android/systemui/statusbar/phone/widgetnew/IViewFragment;

    .end local p2    # "x1":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/statusbar/phone/widgetnew/builder/ShortCutListBuilder$ASCOrderComparator;->compare(Lcom/android/systemui/statusbar/phone/widgetnew/IViewFragment;Lcom/android/systemui/statusbar/phone/widgetnew/IViewFragment;)I

    move-result v0

    return v0
.end method

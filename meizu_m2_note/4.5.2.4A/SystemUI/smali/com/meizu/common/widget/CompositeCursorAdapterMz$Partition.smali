.class public Lcom/meizu/common/widget/CompositeCursorAdapterMz$Partition;
.super Ljava/lang/Object;
.source "CompositeCursorAdapterMz.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/meizu/common/widget/CompositeCursorAdapterMz;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Partition"
.end annotation


# instance fields
.field count:I

.field cursor:Landroid/database/Cursor;

.field hasHeader:Z

.field idColumnIndex:I

.field showIfEmpty:Z


# direct methods
.method public constructor <init>(ZZ)V
    .locals 0
    .param p1, "showIfEmpty"    # Z
    .param p2, "hasHeader"    # Z

    .prologue
    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    iput-boolean p1, p0, Lcom/meizu/common/widget/CompositeCursorAdapterMz$Partition;->showIfEmpty:Z

    .line 44
    iput-boolean p2, p0, Lcom/meizu/common/widget/CompositeCursorAdapterMz$Partition;->hasHeader:Z

    .line 45
    return-void
.end method

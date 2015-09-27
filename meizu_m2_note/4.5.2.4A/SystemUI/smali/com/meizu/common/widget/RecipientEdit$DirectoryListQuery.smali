.class Lcom/meizu/common/widget/RecipientEdit$DirectoryListQuery;
.super Ljava/lang/Object;
.source "RecipientEdit.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/meizu/common/widget/RecipientEdit;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "DirectoryListQuery"
.end annotation


# static fields
.field public static final PROJECTION:[Ljava/lang/String;

.field public static final URI:Landroid/net/Uri;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 3486
    sget-object v0, Landroid/provider/ContactsContract$Directory;->CONTENT_URI:Landroid/net/Uri;

    sput-object v0, Lcom/meizu/common/widget/RecipientEdit$DirectoryListQuery;->URI:Landroid/net/Uri;

    .line 3491
    const/4 v0, 0x7

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "_id"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "accountName"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "accountType"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "displayName"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "packageName"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "typeResourceId"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "is_visible"

    aput-object v2, v0, v1

    sput-object v0, Lcom/meizu/common/widget/RecipientEdit$DirectoryListQuery;->PROJECTION:[Ljava/lang/String;

    return-void
.end method

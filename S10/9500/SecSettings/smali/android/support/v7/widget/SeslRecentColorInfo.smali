.class public Landroid/support/v7/widget/SeslRecentColorInfo;
.super Ljava/lang/Object;
.source "SeslRecentColorInfo.java"


# static fields
.field private static sCurrentColor:Ljava/lang/Integer;

.field private static sNewColor:Ljava/lang/Integer;

.field private static sRecentColorInfo:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static sSelectedColor:Ljava/lang/Integer;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Landroid/support/v7/widget/SeslRecentColorInfo;->sSelectedColor:Ljava/lang/Integer;

    sput-object v0, Landroid/support/v7/widget/SeslRecentColorInfo;->sCurrentColor:Ljava/lang/Integer;

    sput-object v0, Landroid/support/v7/widget/SeslRecentColorInfo;->sNewColor:Ljava/lang/Integer;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    sput-object v0, Landroid/support/v7/widget/SeslRecentColorInfo;->sRecentColorInfo:Ljava/util/LinkedList;

    return-void
.end method


# virtual methods
.method public getRecentColorInfo()Ljava/util/LinkedList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/LinkedList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    sget-object v0, Landroid/support/v7/widget/SeslRecentColorInfo;->sRecentColorInfo:Ljava/util/LinkedList;

    return-object v0
.end method

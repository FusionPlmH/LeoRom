.class Landroid/mtp/VObject;
.super Ljava/lang/Object;
.source "VStorage.java"


# static fields
.field public static final DIRECTORY:I = 0x2

.field public static final FILE:I = 0x1


# instance fields
.field public mId:I

.field public mPath:Ljava/lang/String;

.field public mPid:I

.field public mTitle:Ljava/lang/String;

.field public mType:I


# direct methods
.method public constructor <init>(IIILjava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Landroid/mtp/VObject;->mId:I

    iput p2, p0, Landroid/mtp/VObject;->mPid:I

    iput p3, p0, Landroid/mtp/VObject;->mType:I

    iput-object p4, p0, Landroid/mtp/VObject;->mTitle:Ljava/lang/String;

    iput-object p5, p0, Landroid/mtp/VObject;->mPath:Ljava/lang/String;

    return-void
.end method

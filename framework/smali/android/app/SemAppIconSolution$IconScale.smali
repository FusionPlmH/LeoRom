.class Landroid/app/SemAppIconSolution$IconScale;
.super Ljava/lang/Object;
.source "SemAppIconSolution.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/SemAppIconSolution;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "IconScale"
.end annotation


# instance fields
.field private mAlpha:I

.field private mScale:F

.field final synthetic this$0:Landroid/app/SemAppIconSolution;


# direct methods
.method public constructor <init>(Landroid/app/SemAppIconSolution;IF)V
    .locals 0

    iput-object p1, p0, Landroid/app/SemAppIconSolution$IconScale;->this$0:Landroid/app/SemAppIconSolution;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p2, p0, Landroid/app/SemAppIconSolution$IconScale;->mAlpha:I

    iput p3, p0, Landroid/app/SemAppIconSolution$IconScale;->mScale:F

    return-void
.end method


# virtual methods
.method public getAlpha()I
    .locals 1

    iget v0, p0, Landroid/app/SemAppIconSolution$IconScale;->mAlpha:I

    return v0
.end method

.method public getScale()F
    .locals 1

    iget v0, p0, Landroid/app/SemAppIconSolution$IconScale;->mScale:F

    return v0
.end method

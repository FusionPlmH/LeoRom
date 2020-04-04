.class public final Lcom/samsung/android/graphics/SemImageFilter$DistortFilterType;
.super Ljava/lang/Object;
.source "SemImageFilter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/graphics/SemImageFilter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "DistortFilterType"
.end annotation


# static fields
.field public static final KNITTED:Lcom/samsung/android/graphics/SemImageFilter$FilterType;

.field public static final LENS_DISTORTION:Lcom/samsung/android/graphics/SemImageFilter$FilterType;

.field public static final MOSAIC:Lcom/samsung/android/graphics/SemImageFilter$FilterType;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/samsung/android/graphics/SemImageFilter$FilterType;

    const/4 v1, 0x0

    const/16 v2, 0x31

    invoke-direct {v0, v2, v1}, Lcom/samsung/android/graphics/SemImageFilter$FilterType;-><init>(ILcom/samsung/android/graphics/SemImageFilter$1;)V

    sput-object v0, Lcom/samsung/android/graphics/SemImageFilter$DistortFilterType;->LENS_DISTORTION:Lcom/samsung/android/graphics/SemImageFilter$FilterType;

    new-instance v0, Lcom/samsung/android/graphics/SemImageFilter$FilterType;

    const/16 v2, 0x33

    invoke-direct {v0, v2, v1}, Lcom/samsung/android/graphics/SemImageFilter$FilterType;-><init>(ILcom/samsung/android/graphics/SemImageFilter$1;)V

    sput-object v0, Lcom/samsung/android/graphics/SemImageFilter$DistortFilterType;->MOSAIC:Lcom/samsung/android/graphics/SemImageFilter$FilterType;

    new-instance v0, Lcom/samsung/android/graphics/SemImageFilter$FilterType;

    const/16 v2, 0x39

    invoke-direct {v0, v2, v1}, Lcom/samsung/android/graphics/SemImageFilter$FilterType;-><init>(ILcom/samsung/android/graphics/SemImageFilter$1;)V

    sput-object v0, Lcom/samsung/android/graphics/SemImageFilter$DistortFilterType;->KNITTED:Lcom/samsung/android/graphics/SemImageFilter$FilterType;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

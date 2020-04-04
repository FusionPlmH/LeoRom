.class public final Lcom/samsung/android/graphics/SemImageFilter$ColorFilterType;
.super Ljava/lang/Object;
.source "SemImageFilter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/graphics/SemImageFilter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ColorFilterType"
.end annotation


# static fields
.field public static final ADJUST:Lcom/samsung/android/graphics/SemImageFilter$FilterType;

.field public static final BITMAP_COLOR_MASK:Lcom/samsung/android/graphics/SemImageFilter$FilterType;

.field public static final BLEND:Lcom/samsung/android/graphics/SemImageFilter$FilterType;

.field public static final CLAMP:Lcom/samsung/android/graphics/SemImageFilter$FilterType;

.field public static final COLORIZE:Lcom/samsung/android/graphics/SemImageFilter$FilterType;

.field public static final HUE:Lcom/samsung/android/graphics/SemImageFilter$FilterType;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/samsung/android/graphics/SemImageFilter$FilterType;

    const/4 v1, 0x0

    const/16 v2, 0x11

    invoke-direct {v0, v2, v1}, Lcom/samsung/android/graphics/SemImageFilter$FilterType;-><init>(ILcom/samsung/android/graphics/SemImageFilter$1;)V

    sput-object v0, Lcom/samsung/android/graphics/SemImageFilter$ColorFilterType;->ADJUST:Lcom/samsung/android/graphics/SemImageFilter$FilterType;

    new-instance v0, Lcom/samsung/android/graphics/SemImageFilter$FilterType;

    const/16 v2, 0x10

    invoke-direct {v0, v2, v1}, Lcom/samsung/android/graphics/SemImageFilter$FilterType;-><init>(ILcom/samsung/android/graphics/SemImageFilter$1;)V

    sput-object v0, Lcom/samsung/android/graphics/SemImageFilter$ColorFilterType;->COLORIZE:Lcom/samsung/android/graphics/SemImageFilter$FilterType;

    new-instance v0, Lcom/samsung/android/graphics/SemImageFilter$FilterType;

    const/16 v2, 0x12

    invoke-direct {v0, v2, v1}, Lcom/samsung/android/graphics/SemImageFilter$FilterType;-><init>(ILcom/samsung/android/graphics/SemImageFilter$1;)V

    sput-object v0, Lcom/samsung/android/graphics/SemImageFilter$ColorFilterType;->CLAMP:Lcom/samsung/android/graphics/SemImageFilter$FilterType;

    new-instance v0, Lcom/samsung/android/graphics/SemImageFilter$FilterType;

    const/16 v2, 0x44

    invoke-direct {v0, v2, v1}, Lcom/samsung/android/graphics/SemImageFilter$FilterType;-><init>(ILcom/samsung/android/graphics/SemImageFilter$1;)V

    sput-object v0, Lcom/samsung/android/graphics/SemImageFilter$ColorFilterType;->HUE:Lcom/samsung/android/graphics/SemImageFilter$FilterType;

    new-instance v0, Lcom/samsung/android/graphics/SemImageFilter$FilterType;

    const/16 v2, 0x34

    invoke-direct {v0, v2, v1}, Lcom/samsung/android/graphics/SemImageFilter$FilterType;-><init>(ILcom/samsung/android/graphics/SemImageFilter$1;)V

    sput-object v0, Lcom/samsung/android/graphics/SemImageFilter$ColorFilterType;->BITMAP_COLOR_MASK:Lcom/samsung/android/graphics/SemImageFilter$FilterType;

    new-instance v0, Lcom/samsung/android/graphics/SemImageFilter$FilterType;

    const/16 v2, 0x35

    invoke-direct {v0, v2, v1}, Lcom/samsung/android/graphics/SemImageFilter$FilterType;-><init>(ILcom/samsung/android/graphics/SemImageFilter$1;)V

    sput-object v0, Lcom/samsung/android/graphics/SemImageFilter$ColorFilterType;->BLEND:Lcom/samsung/android/graphics/SemImageFilter$FilterType;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

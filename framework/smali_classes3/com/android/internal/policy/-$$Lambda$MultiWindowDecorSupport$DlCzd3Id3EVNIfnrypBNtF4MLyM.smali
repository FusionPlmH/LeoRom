.class public final synthetic Lcom/android/internal/policy/-$$Lambda$MultiWindowDecorSupport$DlCzd3Id3EVNIfnrypBNtF4MLyM;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Consumer;


# static fields
.field public static final synthetic INSTANCE:Lcom/android/internal/policy/-$$Lambda$MultiWindowDecorSupport$DlCzd3Id3EVNIfnrypBNtF4MLyM;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/internal/policy/-$$Lambda$MultiWindowDecorSupport$DlCzd3Id3EVNIfnrypBNtF4MLyM;

    invoke-direct {v0}, Lcom/android/internal/policy/-$$Lambda$MultiWindowDecorSupport$DlCzd3Id3EVNIfnrypBNtF4MLyM;-><init>()V

    sput-object v0, Lcom/android/internal/policy/-$$Lambda$MultiWindowDecorSupport$DlCzd3Id3EVNIfnrypBNtF4MLyM;->INSTANCE:Lcom/android/internal/policy/-$$Lambda$MultiWindowDecorSupport$DlCzd3Id3EVNIfnrypBNtF4MLyM;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Landroid/graphics/Paint;

    invoke-static {p1}, Lcom/android/internal/policy/MultiWindowDecorSupport;->lambda$initDecorViewResources$0(Landroid/graphics/Paint;)V

    return-void
.end method

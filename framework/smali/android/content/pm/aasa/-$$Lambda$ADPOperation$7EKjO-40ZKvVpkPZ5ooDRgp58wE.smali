.class public final synthetic Landroid/content/pm/aasa/-$$Lambda$ADPOperation$7EKjO-40ZKvVpkPZ5ooDRgp58wE;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Predicate;


# static fields
.field public static final synthetic INSTANCE:Landroid/content/pm/aasa/-$$Lambda$ADPOperation$7EKjO-40ZKvVpkPZ5ooDRgp58wE;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Landroid/content/pm/aasa/-$$Lambda$ADPOperation$7EKjO-40ZKvVpkPZ5ooDRgp58wE;

    invoke-direct {v0}, Landroid/content/pm/aasa/-$$Lambda$ADPOperation$7EKjO-40ZKvVpkPZ5ooDRgp58wE;-><init>()V

    sput-object v0, Landroid/content/pm/aasa/-$$Lambda$ADPOperation$7EKjO-40ZKvVpkPZ5ooDRgp58wE;->INSTANCE:Landroid/content/pm/aasa/-$$Lambda$ADPOperation$7EKjO-40ZKvVpkPZ5ooDRgp58wE;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .locals 0

    check-cast p1, Landroid/content/pm/aasa/ADPContainer$ADPPolicy;

    invoke-static {p1}, Landroid/content/pm/aasa/ADPOperation;->lambda$filterADPPolicy$2(Landroid/content/pm/aasa/ADPContainer$ADPPolicy;)Z

    move-result p1

    return p1
.end method

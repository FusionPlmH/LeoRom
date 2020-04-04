.class public final synthetic Lcom/android/systemui/-$$Lambda$Dependency$Hn55pN-Xu3m-OTSAkOT55gG7Xus;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/android/systemui/Dependency$DependencyProvider;


# static fields
.field public static final synthetic INSTANCE:Lcom/android/systemui/-$$Lambda$Dependency$Hn55pN-Xu3m-OTSAkOT55gG7Xus;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/systemui/-$$Lambda$Dependency$Hn55pN-Xu3m-OTSAkOT55gG7Xus;

    invoke-direct {v0}, Lcom/android/systemui/-$$Lambda$Dependency$Hn55pN-Xu3m-OTSAkOT55gG7Xus;-><init>()V

    sput-object v0, Lcom/android/systemui/-$$Lambda$Dependency$Hn55pN-Xu3m-OTSAkOT55gG7Xus;->INSTANCE:Lcom/android/systemui/-$$Lambda$Dependency$Hn55pN-Xu3m-OTSAkOT55gG7Xus;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final createDependency()Ljava/lang/Object;
    .locals 1

    invoke-static {}, Lcom/android/systemui/Dependency;->lambda$start$81()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

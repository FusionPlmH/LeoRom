.class public final synthetic Lcom/samsung/android/settings/notification/-$$Lambda$SecZenModeDNDSettings$SummaryBuilder$3TGMMzFs74PtkMZb8u6UHm2lVns;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Predicate;


# static fields
.field public static final synthetic INSTANCE:Lcom/samsung/android/settings/notification/-$$Lambda$SecZenModeDNDSettings$SummaryBuilder$3TGMMzFs74PtkMZb8u6UHm2lVns;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/samsung/android/settings/notification/-$$Lambda$SecZenModeDNDSettings$SummaryBuilder$3TGMMzFs74PtkMZb8u6UHm2lVns;

    invoke-direct {v0}, Lcom/samsung/android/settings/notification/-$$Lambda$SecZenModeDNDSettings$SummaryBuilder$3TGMMzFs74PtkMZb8u6UHm2lVns;-><init>()V

    sput-object v0, Lcom/samsung/android/settings/notification/-$$Lambda$SecZenModeDNDSettings$SummaryBuilder$3TGMMzFs74PtkMZb8u6UHm2lVns;->INSTANCE:Lcom/samsung/android/settings/notification/-$$Lambda$SecZenModeDNDSettings$SummaryBuilder$3TGMMzFs74PtkMZb8u6UHm2lVns;

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

    check-cast p1, Ljava/lang/Integer;

    invoke-static {p1}, Lcom/samsung/android/settings/notification/SecZenModeDNDSettings$SummaryBuilder;->lambda$getSoundSettingSummary$0(Ljava/lang/Integer;)Z

    move-result p1

    return p1
.end method

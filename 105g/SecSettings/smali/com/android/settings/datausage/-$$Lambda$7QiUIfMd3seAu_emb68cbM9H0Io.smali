.class public final synthetic Lcom/android/settings/datausage/-$$Lambda$7QiUIfMd3seAu_emb68cbM9H0Io;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/android/settings/dashboard/SummaryLoader$SummaryProviderFactory;


# static fields
.field public static final synthetic INSTANCE:Lcom/android/settings/datausage/-$$Lambda$7QiUIfMd3seAu_emb68cbM9H0Io;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/settings/datausage/-$$Lambda$7QiUIfMd3seAu_emb68cbM9H0Io;

    invoke-direct {v0}, Lcom/android/settings/datausage/-$$Lambda$7QiUIfMd3seAu_emb68cbM9H0Io;-><init>()V

    sput-object v0, Lcom/android/settings/datausage/-$$Lambda$7QiUIfMd3seAu_emb68cbM9H0Io;->INSTANCE:Lcom/android/settings/datausage/-$$Lambda$7QiUIfMd3seAu_emb68cbM9H0Io;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final createSummaryProvider(Landroid/app/Activity;Lcom/android/settings/dashboard/SummaryLoader;)Lcom/android/settings/dashboard/SummaryLoader$SummaryProvider;
    .locals 1

    new-instance v0, Lcom/android/settings/datausage/DataUsageSummaryLegacy$SummaryProvider;

    invoke-direct {v0, p1, p2}, Lcom/android/settings/datausage/DataUsageSummaryLegacy$SummaryProvider;-><init>(Landroid/app/Activity;Lcom/android/settings/dashboard/SummaryLoader;)V

    check-cast v0, Lcom/android/settings/dashboard/SummaryLoader$SummaryProvider;

    return-object v0
.end method

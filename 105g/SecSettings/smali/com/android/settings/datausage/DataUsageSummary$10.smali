.class Lcom/android/settings/datausage/DataUsageSummary$10;
.super Lcom/android/settings/datausage/CellDataPreference$DataStateListener;
.source "DataUsageSummary.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/datausage/DataUsageSummary;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/datausage/DataUsageSummary;


# direct methods
.method constructor <init>(Lcom/android/settings/datausage/DataUsageSummary;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/datausage/DataUsageSummary$10;->this$0:Lcom/android/settings/datausage/DataUsageSummary;

    invoke-direct {p0}, Lcom/android/settings/datausage/CellDataPreference$DataStateListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 1

    iget-object v0, p0, Lcom/android/settings/datausage/DataUsageSummary$10;->this$0:Lcom/android/settings/datausage/DataUsageSummary;

    invoke-static {v0}, Lcom/android/settings/datausage/DataUsageSummary;->access$300(Lcom/android/settings/datausage/DataUsageSummary;)V

    return-void
.end method

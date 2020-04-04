.class Lcom/samsung/android/settings/datausage/DataUsageSummaryCHN$3;
.super Lcom/android/settings/datausage/CellDataPreference$DataStateListener;
.source "DataUsageSummaryCHN.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/datausage/DataUsageSummaryCHN;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/datausage/DataUsageSummaryCHN;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/datausage/DataUsageSummaryCHN;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/datausage/DataUsageSummaryCHN$3;->this$0:Lcom/samsung/android/settings/datausage/DataUsageSummaryCHN;

    invoke-direct {p0}, Lcom/android/settings/datausage/CellDataPreference$DataStateListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/datausage/DataUsageSummaryCHN$3;->this$0:Lcom/samsung/android/settings/datausage/DataUsageSummaryCHN;

    invoke-static {v0}, Lcom/samsung/android/settings/datausage/DataUsageSummaryCHN;->access$000(Lcom/samsung/android/settings/datausage/DataUsageSummaryCHN;)V

    return-void
.end method

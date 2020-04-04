.class Lcom/samsung/android/settings/dashboard/SecDashboardRegistry$LazyHolder;
.super Ljava/lang/Object;
.source "SecDashboardRegistry.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/dashboard/SecDashboardRegistry;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "LazyHolder"
.end annotation


# static fields
.field public static final INSTANCE:Lcom/samsung/android/settings/dashboard/SecDashboardRegistry;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/samsung/android/settings/dashboard/SecDashboardRegistry;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/samsung/android/settings/dashboard/SecDashboardRegistry;-><init>(Lcom/samsung/android/settings/dashboard/SecDashboardRegistry$1;)V

    sput-object v0, Lcom/samsung/android/settings/dashboard/SecDashboardRegistry$LazyHolder;->INSTANCE:Lcom/samsung/android/settings/dashboard/SecDashboardRegistry;

    return-void
.end method

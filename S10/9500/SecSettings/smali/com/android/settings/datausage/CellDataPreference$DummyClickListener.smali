.class Lcom/android/settings/datausage/CellDataPreference$DummyClickListener;
.super Ljava/lang/Object;
.source "CellDataPreference.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/datausage/CellDataPreference;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DummyClickListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/datausage/CellDataPreference;


# direct methods
.method private constructor <init>(Lcom/android/settings/datausage/CellDataPreference;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/datausage/CellDataPreference$DummyClickListener;->this$0:Lcom/android/settings/datausage/CellDataPreference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/settings/datausage/CellDataPreference;Lcom/android/settings/datausage/CellDataPreference$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/settings/datausage/CellDataPreference$DummyClickListener;-><init>(Lcom/android/settings/datausage/CellDataPreference;)V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lcom/android/settings/datausage/CellDataPreference$DummyClickListener;->this$0:Lcom/android/settings/datausage/CellDataPreference;

    invoke-static {v0}, Lcom/android/settings/datausage/CellDataPreference;->access$400(Lcom/android/settings/datausage/CellDataPreference;)V

    return-void
.end method

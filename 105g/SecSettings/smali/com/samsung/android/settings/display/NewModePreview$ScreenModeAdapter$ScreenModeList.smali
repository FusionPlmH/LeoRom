.class public Lcom/samsung/android/settings/display/NewModePreview$ScreenModeAdapter$ScreenModeList;
.super Ljava/lang/Object;
.source "NewModePreview.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/display/NewModePreview$ScreenModeAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ScreenModeList"
.end annotation


# instance fields
.field private mIsChecked:Z

.field private mListItemTitle:Ljava/lang/String;

.field private mListItemValue:I

.field final synthetic this$1:Lcom/samsung/android/settings/display/NewModePreview$ScreenModeAdapter;


# direct methods
.method public constructor <init>(Lcom/samsung/android/settings/display/NewModePreview$ScreenModeAdapter;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/display/NewModePreview$ScreenModeAdapter$ScreenModeList;->this$1:Lcom/samsung/android/settings/display/NewModePreview$ScreenModeAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getChecked()Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/settings/display/NewModePreview$ScreenModeAdapter$ScreenModeList;->mIsChecked:Z

    return v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/display/NewModePreview$ScreenModeAdapter$ScreenModeList;->mListItemTitle:Ljava/lang/String;

    return-object v0
.end method

.method public getValue()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/settings/display/NewModePreview$ScreenModeAdapter$ScreenModeList;->mListItemValue:I

    return v0
.end method

.method public setChecked(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/settings/display/NewModePreview$ScreenModeAdapter$ScreenModeList;->mIsChecked:Z

    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/display/NewModePreview$ScreenModeAdapter$ScreenModeList;->mListItemTitle:Ljava/lang/String;

    return-void
.end method

.method public setValue(I)V
    .locals 0

    iput p1, p0, Lcom/samsung/android/settings/display/NewModePreview$ScreenModeAdapter$ScreenModeList;->mListItemValue:I

    return-void
.end method

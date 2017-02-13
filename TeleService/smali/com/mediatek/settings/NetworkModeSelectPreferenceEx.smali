.class public Lcom/mediatek/settings/NetworkModeSelectPreferenceEx;
.super Lcom/mediatek/gemini/simui/SimCardInfoPreference;
.source "NetworkModeSelectPreferenceEx.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "NetworkModeSelectPreferenceEx"


# instance fields
.field private mClickedDialogEntryIndex:I

.field private mContext:Landroid/content/Context;

.field private mItemStatus:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/mediatek/gemini/simui/SimInfoViewUtil$WidgetType;Landroid/content/Context;Ljava/util/List;)V
    .locals 0
    .param p1, "type"    # Lcom/mediatek/gemini/simui/SimInfoViewUtil$WidgetType;
    .param p2, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/mediatek/gemini/simui/SimInfoViewUtil$WidgetType;",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 38
    .local p3, "itemStatus":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Boolean;>;"
    invoke-direct {p0, p1, p2}, Lcom/mediatek/gemini/simui/SimCardInfoPreference;-><init>(Lcom/mediatek/gemini/simui/SimInfoViewUtil$WidgetType;Landroid/content/Context;)V

    .line 39
    iput-object p2, p0, Lcom/mediatek/settings/NetworkModeSelectPreferenceEx;->mContext:Landroid/content/Context;

    .line 40
    iput-object p3, p0, Lcom/mediatek/settings/NetworkModeSelectPreferenceEx;->mItemStatus:Ljava/util/List;

    .line 41
    return-void
.end method

.method static synthetic access$000(Lcom/mediatek/settings/NetworkModeSelectPreferenceEx;)I
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/settings/NetworkModeSelectPreferenceEx;

    .prologue
    .line 30
    iget v0, p0, Lcom/mediatek/settings/NetworkModeSelectPreferenceEx;->mClickedDialogEntryIndex:I

    return v0
.end method

.method static synthetic access$002(Lcom/mediatek/settings/NetworkModeSelectPreferenceEx;I)I
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/settings/NetworkModeSelectPreferenceEx;
    .param p1, "x1"    # I

    .prologue
    .line 30
    iput p1, p0, Lcom/mediatek/settings/NetworkModeSelectPreferenceEx;->mClickedDialogEntryIndex:I

    return p1
.end method

.method static synthetic access$100(Lcom/mediatek/settings/NetworkModeSelectPreferenceEx;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/settings/NetworkModeSelectPreferenceEx;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 30
    invoke-direct {p0, p1}, Lcom/mediatek/settings/NetworkModeSelectPreferenceEx;->log(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$200(Lcom/mediatek/settings/NetworkModeSelectPreferenceEx;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/settings/NetworkModeSelectPreferenceEx;

    .prologue
    .line 30
    iget-object v0, p0, Lcom/mediatek/settings/NetworkModeSelectPreferenceEx;->mItemStatus:Ljava/util/List;

    return-object v0
.end method

.method private log(Ljava/lang/String;)V
    .locals 1
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 88
    const-string v0, "NetworkModeSelectPreferenceEx"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 89
    return-void
.end method


# virtual methods
.method protected onDialogClosed(Z)V
    .locals 3
    .param p1, "positiveResult"    # Z

    .prologue
    .line 76
    const-string v2, "onDialogClosed..."

    invoke-direct {p0, v2}, Lcom/mediatek/settings/NetworkModeSelectPreferenceEx;->log(Ljava/lang/String;)V

    .line 77
    invoke-super {p0, p1}, Lcom/mediatek/gemini/simui/SimCardInfoPreference;->onDialogClosed(Z)V

    .line 78
    invoke-virtual {p0}, Lcom/mediatek/settings/NetworkModeSelectPreferenceEx;->getEntryValues()[Ljava/lang/CharSequence;

    move-result-object v0

    .line 79
    .local v0, "entryValues":[Ljava/lang/CharSequence;
    if-eqz p1, :cond_0

    iget v2, p0, Lcom/mediatek/settings/NetworkModeSelectPreferenceEx;->mClickedDialogEntryIndex:I

    if-ltz v2, :cond_0

    invoke-virtual {p0}, Lcom/mediatek/settings/NetworkModeSelectPreferenceEx;->getEntryValues()[Ljava/lang/CharSequence;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 80
    iget v2, p0, Lcom/mediatek/settings/NetworkModeSelectPreferenceEx;->mClickedDialogEntryIndex:I

    aget-object v2, v0, v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 81
    .local v1, "value":Ljava/lang/String;
    invoke-virtual {p0, v1}, Lcom/mediatek/settings/NetworkModeSelectPreferenceEx;->callChangeListener(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 82
    invoke-virtual {p0, v1}, Lcom/mediatek/settings/NetworkModeSelectPreferenceEx;->setValue(Ljava/lang/String;)V

    .line 85
    .end local v1    # "value":Ljava/lang/String;
    :cond_0
    return-void
.end method

.method protected onPrepareDialogBuilder(Landroid/app/AlertDialog$Builder;)V
    .locals 6
    .param p1, "builder"    # Landroid/app/AlertDialog$Builder;

    .prologue
    const/4 v5, 0x0

    .line 49
    invoke-super {p0, p1}, Lcom/mediatek/gemini/simui/SimCardInfoPreference;->onPrepareDialogBuilder(Landroid/app/AlertDialog$Builder;)V

    .line 50
    invoke-virtual {p0}, Lcom/mediatek/settings/NetworkModeSelectPreferenceEx;->getValue()Ljava/lang/String;

    move-result-object v2

    .line 51
    .local v2, "value":Ljava/lang/String;
    invoke-virtual {p0, v2}, Lcom/mediatek/settings/NetworkModeSelectPreferenceEx;->findIndexOfValue(Ljava/lang/String;)I

    move-result v3

    iput v3, p0, Lcom/mediatek/settings/NetworkModeSelectPreferenceEx;->mClickedDialogEntryIndex:I

    .line 52
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onPrepareDialogBuilder...: mClickedDialogEntryIndex, "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/mediatek/settings/NetworkModeSelectPreferenceEx;->mClickedDialogEntryIndex:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " mValue: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/mediatek/settings/NetworkModeSelectPreferenceEx;->log(Ljava/lang/String;)V

    .line 53
    iget-object v3, p0, Lcom/mediatek/settings/NetworkModeSelectPreferenceEx;->mItemStatus:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_0

    const/4 v3, 0x1

    :goto_0
    invoke-static {v3}, Lcom/google/common/base/Preconditions;->checkState(Z)V

    .line 54
    invoke-virtual {p0}, Lcom/mediatek/settings/NetworkModeSelectPreferenceEx;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v1

    .line 55
    .local v1, "list":[Ljava/lang/CharSequence;
    new-instance v0, Lcom/mediatek/settings/SelectSingleChoiceAdapter;

    iget-object v3, p0, Lcom/mediatek/settings/NetworkModeSelectPreferenceEx;->mItemStatus:Ljava/util/List;

    iget-object v4, p0, Lcom/mediatek/settings/NetworkModeSelectPreferenceEx;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1, v3, v4}, Lcom/mediatek/settings/SelectSingleChoiceAdapter;-><init>([Ljava/lang/CharSequence;Ljava/util/List;Landroid/content/Context;)V

    .line 56
    .local v0, "adapter":Lcom/mediatek/settings/SelectSingleChoiceAdapter;
    iget v3, p0, Lcom/mediatek/settings/NetworkModeSelectPreferenceEx;->mClickedDialogEntryIndex:I

    new-instance v4, Lcom/mediatek/settings/NetworkModeSelectPreferenceEx$1;

    invoke-direct {v4, p0}, Lcom/mediatek/settings/NetworkModeSelectPreferenceEx$1;-><init>(Lcom/mediatek/settings/NetworkModeSelectPreferenceEx;)V

    invoke-virtual {p1, v0, v3, v4}, Landroid/app/AlertDialog$Builder;->setSingleChoiceItems(Landroid/widget/ListAdapter;ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 71
    invoke-virtual {p1, v5, v5}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 72
    return-void

    .line 53
    .end local v0    # "adapter":Lcom/mediatek/settings/SelectSingleChoiceAdapter;
    .end local v1    # "list":[Ljava/lang/CharSequence;
    :cond_0
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public setItemStatus(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 44
    .local p1, "itemStatus":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Boolean;>;"
    iput-object p1, p0, Lcom/mediatek/settings/NetworkModeSelectPreferenceEx;->mItemStatus:Ljava/util/List;

    .line 45
    return-void
.end method

.class Lcom/android/internal/telephony/IntRangeManager$IntRange;
.super Ljava/lang/Object;
.source "IntRangeManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/IntRangeManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "IntRange"
.end annotation


# instance fields
.field final mClients:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/telephony/IntRangeManager$ClientRange;",
            ">;"
        }
    .end annotation
.end field

.field mEndId:I

.field mStartId:I

.field final synthetic this$0:Lcom/android/internal/telephony/IntRangeManager;


# direct methods
.method constructor <init>(Lcom/android/internal/telephony/IntRangeManager;IILjava/lang/String;)V
    .locals 2
    .param p2, "startId"    # I
    .param p3, "endId"    # I
    .param p4, "client"    # Ljava/lang/String;

    .prologue
    .line 70
    iput-object p1, p0, Lcom/android/internal/telephony/IntRangeManager$IntRange;->this$0:Lcom/android/internal/telephony/IntRangeManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 71
    iput p2, p0, Lcom/android/internal/telephony/IntRangeManager$IntRange;->mStartId:I

    .line 72
    iput p3, p0, Lcom/android/internal/telephony/IntRangeManager$IntRange;->mEndId:I

    .line 73
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/android/internal/telephony/IntRangeManager$IntRange;->mClients:Ljava/util/ArrayList;

    .line 74
    iget-object v0, p0, Lcom/android/internal/telephony/IntRangeManager$IntRange;->mClients:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/IntRangeManager$ClientRange;

    invoke-direct {v1, p1, p2, p3, p4}, Lcom/android/internal/telephony/IntRangeManager$ClientRange;-><init>(Lcom/android/internal/telephony/IntRangeManager;IILjava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 75
    return-void
.end method

.method constructor <init>(Lcom/android/internal/telephony/IntRangeManager;Lcom/android/internal/telephony/IntRangeManager$ClientRange;)V
    .locals 2
    .param p2, "clientRange"    # Lcom/android/internal/telephony/IntRangeManager$ClientRange;

    .prologue
    .line 81
    iput-object p1, p0, Lcom/android/internal/telephony/IntRangeManager$IntRange;->this$0:Lcom/android/internal/telephony/IntRangeManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 82
    iget v0, p2, Lcom/android/internal/telephony/IntRangeManager$ClientRange;->mStartId:I

    iput v0, p0, Lcom/android/internal/telephony/IntRangeManager$IntRange;->mStartId:I

    .line 83
    iget v0, p2, Lcom/android/internal/telephony/IntRangeManager$ClientRange;->mEndId:I

    iput v0, p0, Lcom/android/internal/telephony/IntRangeManager$IntRange;->mEndId:I

    .line 84
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/android/internal/telephony/IntRangeManager$IntRange;->mClients:Ljava/util/ArrayList;

    .line 85
    iget-object v0, p0, Lcom/android/internal/telephony/IntRangeManager$IntRange;->mClients:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 86
    return-void
.end method

.method constructor <init>(Lcom/android/internal/telephony/IntRangeManager;Lcom/android/internal/telephony/IntRangeManager$IntRange;I)V
    .locals 3
    .param p2, "intRange"    # Lcom/android/internal/telephony/IntRangeManager$IntRange;
    .param p3, "numElements"    # I

    .prologue
    .line 98
    iput-object p1, p0, Lcom/android/internal/telephony/IntRangeManager$IntRange;->this$0:Lcom/android/internal/telephony/IntRangeManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 99
    iget v1, p2, Lcom/android/internal/telephony/IntRangeManager$IntRange;->mStartId:I

    iput v1, p0, Lcom/android/internal/telephony/IntRangeManager$IntRange;->mStartId:I

    .line 100
    iget v1, p2, Lcom/android/internal/telephony/IntRangeManager$IntRange;->mEndId:I

    iput v1, p0, Lcom/android/internal/telephony/IntRangeManager$IntRange;->mEndId:I

    .line 101
    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p2, Lcom/android/internal/telephony/IntRangeManager$IntRange;->mClients:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v1, p0, Lcom/android/internal/telephony/IntRangeManager$IntRange;->mClients:Ljava/util/ArrayList;

    .line 102
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, p3, :cond_0

    .line 103
    iget-object v1, p0, Lcom/android/internal/telephony/IntRangeManager$IntRange;->mClients:Ljava/util/ArrayList;

    iget-object v2, p2, Lcom/android/internal/telephony/IntRangeManager$IntRange;->mClients:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 102
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 105
    :cond_0
    return-void
.end method


# virtual methods
.method insert(Lcom/android/internal/telephony/IntRangeManager$ClientRange;)V
    .locals 6
    .param p1, "range"    # Lcom/android/internal/telephony/IntRangeManager$ClientRange;

    .prologue
    .line 117
    iget-object v4, p0, Lcom/android/internal/telephony/IntRangeManager$IntRange;->mClients:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 118
    .local v2, "len":I
    const/4 v1, -0x1

    .line 119
    .local v1, "insert":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v2, :cond_3

    .line 120
    iget-object v4, p0, Lcom/android/internal/telephony/IntRangeManager$IntRange;->mClients:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/telephony/IntRangeManager$ClientRange;

    .line 121
    .local v3, "nextRange":Lcom/android/internal/telephony/IntRangeManager$ClientRange;
    iget v4, p1, Lcom/android/internal/telephony/IntRangeManager$ClientRange;->mStartId:I

    iget v5, v3, Lcom/android/internal/telephony/IntRangeManager$ClientRange;->mStartId:I

    if-gt v4, v5, :cond_0

    .line 123
    invoke-virtual {p1, v3}, Lcom/android/internal/telephony/IntRangeManager$ClientRange;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 125
    iget v4, p1, Lcom/android/internal/telephony/IntRangeManager$ClientRange;->mStartId:I

    iget v5, v3, Lcom/android/internal/telephony/IntRangeManager$ClientRange;->mStartId:I

    if-ne v4, v5, :cond_1

    iget v4, p1, Lcom/android/internal/telephony/IntRangeManager$ClientRange;->mEndId:I

    iget v5, v3, Lcom/android/internal/telephony/IntRangeManager$ClientRange;->mEndId:I

    if-le v4, v5, :cond_1

    .line 127
    add-int/lit8 v1, v0, 0x1

    .line 128
    if-ge v1, v2, :cond_3

    .line 119
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 135
    :cond_1
    iget-object v4, p0, Lcom/android/internal/telephony/IntRangeManager$IntRange;->mClients:Ljava/util/ArrayList;

    invoke-virtual {v4, v0, p1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 145
    .end local v3    # "nextRange":Lcom/android/internal/telephony/IntRangeManager$ClientRange;
    :cond_2
    :goto_1
    return-void

    .line 140
    :cond_3
    const/4 v4, -0x1

    if-eq v1, v4, :cond_4

    if-ge v1, v2, :cond_4

    .line 141
    iget-object v4, p0, Lcom/android/internal/telephony/IntRangeManager$IntRange;->mClients:Ljava/util/ArrayList;

    invoke-virtual {v4, v1, p1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    goto :goto_1

    .line 144
    :cond_4
    iget-object v4, p0, Lcom/android/internal/telephony/IntRangeManager$IntRange;->mClients:Ljava/util/ArrayList;

    invoke-virtual {v4, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1
.end method

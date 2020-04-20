# # Lets write a program that will translate RNA sequences into proteins.
# RNA can be broken into three nucleotide sequences called codons,
# and then translated to a polypeptide like so:

# # RNA: "AUGUUUUCU" => translates to



# # Codons: "AUG", "UUU", "UCU"
# # => which become a polypeptide with the following sequence =>

# # Protein: "Methionine", "Phenylalanine", "Serine"
# # There are 64 codons which in turn correspond to 20 amino acids;
# however, all of the codon sequences and resulting amino acids are not important in this exercise.

# # There are also four terminating codons (also known as 'STOP' codons); 
# if any of these codons are encountered (by the ribosome), 
# all translation ends and the protein is terminated.
# All subsequent codons after are ignored, like this:

# # RNA: "AUGUUUUCUUAAAUG" =>

# # Codons: "AUG", "UUU", "UCU", "UAA", "AUG" =>

# # Protein: "Methionine", "Phenylalanine", "Serine"
# # Note the stop codon terminates the translation and the final methionine 
# is not translated into the protein sequence.--

# # Below are the codons and resulting Amino Acids needed for the exercise.

# Codon	Amino Acids
# AUG	Methionine
# UUU, UUC	Phenylalanine
# UUA, UUG	Leucine
# UCU, UCC, UCA, UCG	Serine
# UAU, UAC	Tyrosine
# UGU, UGC	Cysteine
# UGG	Tryptophan
# UAA, UAG, UGA	STOP

# # break apart the RNA into codons 
# iterate through the codon array returning the results to a new array
# break if a condon is included in stop 
# return each acid, until the you reach a codo
require 'pry'


class Translation 
  AMINOS = {'Phenylalanine' => ['UUU', 'UUC'], 
            'Methionine' => ['AUG'],
            'Leucine'  => ['UUA', 'UUG'],
            'Serine'  => ['UCU', 'UCC', 'UCA', 'UCG'],
            'Tyrosine'  => ['UAU', 'UAC'],
            'Cysteine'  => ['UGU', 'UGC'], 
            'Tryptophan'  => ['UGG'], 
            'STOP' => ['UAA', 'UAG', 'UGA']}
  
  
  def self.of_codon(codon)
    # binding.pry
    if AMINOS.values.flatten.include?(codon)
      AMINOS.select {|amino, codons| codons.include? codon}.keys.join()
    else 
      raise InvalidCodonError, "That ain't no codon" 
    end
  end
  
  def self.of_rna(strand)
  strand.scan(/.../).each_with_object([]) do |codon, rna|
     return rna if AMINOS['STOP'].include?(codon)
     rna << of_codon(codon) 
   end
  end 
end 

class InvalidCodonError < StandardError; end

p Translation.of_rna('UGGUGUUAUUAAUGGUUU')